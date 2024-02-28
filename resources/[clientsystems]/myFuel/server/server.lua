ESX = exports["es_extended"]:getSharedObject()
--TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

MySQL.ready(function()
	resetUpdated()
	createNoneExistingData()
	randomizePrices()
	deleteNoneUpdated()
	refillNecessaryGasStations()

	print("all startup-functions done!")
end)


--here register usable items!!
if Config.FillingUpJobs.Enabled then 
	if #Config.FillingUpJobs.ItemList > 0 then 
		for i=1, #Config.FillingUpJobs.ItemList do
			ESX.RegisterUsableItem(Config.FillingUpJobs.ItemList[i].item , function(source)
				TriggerClientEvent("myfuel:useitem", source, Config.FillingUpJobs.ItemList[i])
			end)
		end
	end
end 

RegisterServerEvent('myFuel:payForMission')
AddEventHandler('myFuel:payForMission', function(amount)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer ~= nil then
        local price = Config.MissionPricePerLiter * amount
        if xPlayer.getAccount('money').money >= price then
            xPlayer.removeMoney(math.floor(price))
        else
            xPlayer.removeMoney(xPlayer.getAccount('money').money)
        end
    end
end)

RegisterServerEvent('myFuel:LevelupWarehouse')
AddEventHandler('myFuel:LevelupWarehouse',function(amount_to_pay, gas_station_id, new_level)
	local _source = source
	local Query = "UPDATE myfuel_gas_stations SET warehouse_level = @warehouselevel where uid = @gas_station_id" 
	MySQL.Sync.execute(Query,{					
		['@warehouselevel'] = new_level,
		['@gas_station_id'] = gas_station_id
	})

	if Config.BuyStuffDirectlyFromPlayer == false then 
		Query = " UPDATE myfuel_income_expenses SET total_expenses = ifnull(total_expenses,0) + @amount_to_pay, last_update=now() where gas_station_id = @gas_station_id"
		MySQL.Sync.execute(Query,{					
			['@amount_to_pay'] = amount_to_pay,
			['@gas_station_id'] = gas_station_id
		})
	

		local Query = "" .. 
		"INSERT INTO myfuel_balance(" ..
			"gas_station_id" .. 
			", costtype" .. 
			", fuel_type" .. 
			", fuel_amount" .. 
			", fuel_singleprice" .. 
			", totalprice " ..
		") VALUES (" .. 
			"@gas_station_id" .. 
			", @costtype" .. 
			", @fuel_type" .. 
			", @fuel_amount" .. 
			", @fuel_singleprice" .. 
			", @totalprice " ..
		")" 

		MySQL.Sync.execute(Query,{					
			['@gas_station_id'] = gas_station_id
			,['@costtype'] = "expenses"
			,['@fuel_type'] = "upgrade"
			,['@fuel_amount'] = 1
			,['@fuel_singleprice'] = amount_to_pay
			,['@totalprice'] = amount_to_pay
		})

		deleteUnnessaryBalances(gas_station_id)

	else
		removePlayerMoney(_source, amount_to_pay, Config.RemoveMoneyFromAccount, false, nil)
	end

	Query = "SELECT warehouse_level FROM myfuel_gas_stations WHERE uid = @gas_station_id" 
	local data = MySQL.Sync.fetchAll(Query,{					
		['@gas_station_id'] = gas_station_id
	})

	local returndata = {
		warehouselevel = 0
		,cashbook = {}
		,info = {}
		,availableMoney = getAvailableMoney(Config.BuyStuffDirectlyFromPlayer, gas_station_id, _source)
		,playermoney = getPlayerMoney(_source)
	};
	if(#data > 0) then 
		returndata.warehouselevel = data[1].warehouse_level
	end 

	Query = "select costtype,fuel_type,fuel_amount,totalprice from myfuel_balance where gas_Station_id = @gas_station_id order by createddate desc limit " .. Config.CashbookAmountRows
	returndata.cashbook = MySQL.Sync.fetchAll(Query, {
		["@gas_station_id"] = gas_station_id
	})

	Query = " SELECT" ..
	" warehouse_level" ..
	" ,myfuel_income_expenses.total_income as income" ..
	" ,myfuel_income_expenses.total_expenses as expenses" ..
	" FROM myfuel_gas_stations" ..
		" LEFT JOIN myfuel_income_expenses on myfuel_income_expenses.gas_station_id = myfuel_gas_stations.uid" ..
	" where myfuel_gas_stations.uid = @gas_station_id"
	returndata.info = MySQL.Sync.fetchAll(Query, {
		["@gas_station_id"] = gas_station_id
	})


	TriggerClientEvent("myFuel:updateNUI:levelup_warehouse", _source, returndata)
end)

RegisterServerEvent('myFuel:SaveFuelPrice')
AddEventHandler('myFuel:SaveFuelPrice',function(new_price, gas_station_id, fuel_type)
	local _source = source

	local Query = "UPDATE myfuel_stocks SET price_per_liter = @price_per_liter where gas_station_id = @gas_station_id and fuel_type = @fuel_type" 
	MySQL.Sync.execute(Query,{					
		['@price_per_liter'] = new_price,
		['@gas_station_id'] = gas_station_id,
		['@fuel_type'] = fuel_type
	})

	Query = "SELECT price_per_liter FROM myfuel_stocks where gas_station_id = @gas_station_id and fuel_type = @fuel_type" 
	local data = MySQL.Sync.fetchAll(Query,{	
		['@gas_station_id'] = gas_station_id,
		['@fuel_type'] = fuel_type
	})

	local returndata = {
		new_price = new_price
		,fuel_type = fuel_type
		,availableMoney = getAvailableMoney(Config.BuyStuffDirectlyFromPlayer, gas_station_id, _source)
		,playermoney = getPlayerMoney(_source)
	};
	if(#data > 0) then 
		returndata.new_price = data[1].price_per_liter
	end 

	TriggerClientEvent("myFuel:updateNUI:set_new_fuel_price", _source, returndata)
end)

RegisterServerEvent('myFuel:BuyFuel')
AddEventHandler('myFuel:BuyFuel',function(gas_station_id, fuel_type, fuel_price, fuel_amount, fuel_singleprice)
	local _source = source

	--to remove money from player!

	local Query = "UPDATE myfuel_stocks SET stock = stock + @stock where gas_station_id = @gas_station_id and fuel_type = @fuel_type" 
	MySQL.Sync.execute(Query,{					
		['@stock'] = fuel_amount,
		['@gas_station_id'] = gas_station_id,
		['@fuel_type'] = fuel_type
	})

	if Config.BuyStuffDirectlyFromPlayer == false then 

		local Query = " UPDATE myfuel_income_expenses SET total_expenses = total_expenses + @amount_to_pay, last_update=now() where gas_station_id = @gas_station_id"
		MySQL.Sync.execute(Query,{					
			['@amount_to_pay'] = fuel_price,
			['@gas_station_id'] = gas_station_id
		})

		local Query = "INSERT INTO myfuel_balance(gas_station_id, costtype, fuel_type, fuel_amount, totalprice, fuel_singleprice, createddate) VALUES (@gas_station_id, @costtype, @fuel_type, @fuel_amount, @totalprice, @fuel_singleprice, now())" 
		MySQL.Sync.execute(Query,{					
			['@gas_station_id'] = gas_station_id,
			['@costtype'] = "expenses",
			['@fuel_type'] = fuel_type,
			['@fuel_amount'] = fuel_amount,
			['@totalprice'] = fuel_price,
			['@fuel_singleprice'] = fuel_singleprice
		})
		deleteUnnessaryBalances(gas_station_id)

	else
		removePlayerMoney(_source, fuel_price, Config.RemoveMoneyFromAccount, false, nil)
	end 

	Query = "SELECT stock FROM myfuel_stocks where gas_station_id = @gas_station_id and fuel_type = @fuel_type" 
	local data = MySQL.Sync.fetchAll(Query,{	
		['@gas_station_id'] = gas_station_id,
		['@fuel_type'] = fuel_type
	})

	local returndata = {
		new_current_stock = 0
		,availableMoney = getAvailableMoney(Config.BuyStuffDirectlyFromPlayer, gas_station_id, _source)
		,playermoney = getPlayerMoney(_source)
		,fuel_type = fuel_type
		,cashbook = {}
		,info = {}
	};

	if(#data > 0) then 
		returndata.new_current_stock = data[1].stock
	end 



	Query = " SELECT" ..
			" warehouse_level" ..
			" ,myfuel_income_expenses.total_income as income" ..
			" ,myfuel_income_expenses.total_expenses as expenses" ..
		" FROM myfuel_gas_stations" ..
			" LEFT JOIN myfuel_income_expenses on myfuel_income_expenses.gas_station_id = myfuel_gas_stations.uid" ..
		" where myfuel_gas_stations.uid = @gas_station_id"
	returndata.info = MySQL.Sync.fetchAll(Query, {
		["@gas_station_id"] = gas_station_id
	})

	Query = "select costtype,fuel_type,fuel_amount,totalprice from myfuel_balance where gas_Station_id = @gas_station_id order by createddate desc limit " .. Config.CashbookAmountRows
	returndata.cashbook = MySQL.Sync.fetchAll(Query, {
		["@gas_station_id"] = gas_station_id
	})


	TriggerClientEvent("myFuel:updateNUI:bought_fuel", _source, returndata)
end)



RegisterServerEvent('myFuel:UpdateStock')
AddEventHandler('myFuel:UpdateStock',function(gas_station_id, fuel_type, itemname, itemlabel, amount_to_add, ui_element_id, ui_amount ,payment_for_player, called_from_ui)
	local _source = source
	local Query = ""
	
	if called_from_ui == false then 
		local data = {}

		if fuel_type == "*" then 
			Query = "SELECT * FROM myfuel_stocks where gas_station_id = @gas_station_id and fuel_type <> '' and stock <= @maxStock" 
			data = MySQL.Sync.fetchAll(Query,{					
				['@gas_station_id'] = gas_station_id,
				['@maxStock'] = 2500
			})
		else
			Query = "SELECT * FROM myfuel_stocks where gas_station_id = @gas_station_id and fuel_type = @fuel_type and stock <= @maxStock" 
			data = MySQL.Sync.fetchAll(Query,{			
				['@gas_station_id'] = gas_station_id,		
				['@fuel_type'] = fuel_type,
				['@maxStock'] = Config.WarehouseLevels[1].capacity
			})
		end 

		if #data > 0 then 
			if getPlayerItemCount(_source, itemname) > 0 then 
				removeItemFromPlayer(_source, itemname, 1)

				if fuel_type == "*" then 
					Query = "UPDATE myfuel_stocks SET stock = stock + @stock where gas_station_id = @gas_station_id and fuel_type <> '' and stock <= @maxStock" 
					data = MySQL.Sync.fetchAll(Query,{					
						['@stock'] = amount_to_add,
						['@gas_station_id'] = gas_station_id,
						['@maxStock'] = 2500
					})
				else
					Query = "UPDATE myfuel_stocks SET stock = stock + @stock where gas_station_id = @gas_station_id and fuel_type = @fuel_type" 
					data = MySQL.Sync.fetchAll(Query,{					
						['@stock'] = amount_to_add,	
						['@gas_station_id'] = gas_station_id,		
						['@fuel_type'] = fuel_type
					})
				end 

				if payment_for_player > 0 then 
					addPlayerMoney(_source, payment_for_player, Config.RemoveMoneyFromAccount)
				end 

				if fuel_type ~= "electric" then 
					TriggerClientEvent("myFuel:notify", _source, Translations[Config.Locale].gas_station_filled_up .. " " ..amount_to_add .." ".. Translations[Config.Locale].gas_station_filled_up_2 .. payment_for_player)
				else	
					TriggerClientEvent("myFuel:notify", _source, Translations[Config.Locale].gas_station_filled_up .. " " ..amount_to_add .." " .. Translations[Config.Locale].gas_station_filled_up_2_electric .. payment_for_player)
				end 
			else
				TriggerClientEvent("myFuel:notify", _source, Translations[Config.Locale].not_enough_items .. " (".. itemlabel .. ")" )
			end 
		else
			TriggerClientEvent("myFuel:notify", _source, Translations[Config.Locale].gas_station_cannot_fillup)
		end 
		
	else
		if getPlayerItemCount(_source, itemname) > ui_amount then 
			removeItemFromPlayer(_source, itemname, ui_amount)

			Query = "UPDATE myfuel_stocks SET stock = stock + @stock where gas_station_id = @gas_station_id and fuel_type = @fuel_type" 
			MySQL.Sync.execute(Query,{					
				['@stock'] = amount_to_add * ui_amount,
				['@gas_station_id'] = gas_station_id,
				['@fuel_type'] = fuel_type
			})	
	
	
			Query = "SELECT stock from myfuel_stocks where gas_station_id = @gas_station_id and fuel_type = @fuel_type"
			local data = MySQL.Sync.fetchAll(Query, {
				["@gas_station_id"] = gas_station_id,
				["@fuel_type"] = fuel_type
			})
	
			TriggerClientEvent("myfuel:handleItemFillupUI", _source, "",
				{
					stock = data[1].stock,
					ui_element_id = ui_element_id,
					amount_items_remain = getPlayerItemCount(_source, itemname),
					fuel_type = fuel_type
				}
			)
		else
			TriggerClientEvent("myfuel:handleItemFillupUI", _source, Translations[Config.Locale].not_enough_items .. " (".. itemlabel .. ")", 
				{
					ui_element_id = ui_element_id,
					amount_items_remain = getPlayerItemCount(_source, itemname),
					fuel_type = fuel_type
				}
			)
		end 
	end 
	
end)

RegisterServerEvent('myFuel:SetStockToMax')
AddEventHandler('myFuel:SetStockToMax',function(gas_station_id, fuel_type, stock_to_set)
	local _source = source
	
	local Query = "UPDATE myfuel_stocks SET stock = @stock where gas_station_id = @gas_station_id and fuel_type = @fuel_type" 
	MySQL.Sync.execute(Query,{					
		['@stock'] = stock_to_set,
		['@gas_station_id'] = gas_station_id,
		['@fuel_type'] = fuel_type
	})
end)


RegisterServerEvent('myFuel:TransferMoney')
AddEventHandler('myFuel:TransferMoney',function(gas_station_id, money_amount, transfer_type)
	local _source = source

	if transfer_type == "deposit" then 
		local Query = " UPDATE myfuel_income_expenses SET total_income = total_income + @amount_money, last_update=now() where gas_station_id = @gas_station_id"
		MySQL.Sync.execute(Query,{					
			['@amount_money'] = money_amount,
			['@gas_station_id'] = gas_station_id
		})
	else
		local Query = " UPDATE myfuel_income_expenses SET total_expenses = total_expenses + @amount_money, last_update=now() where gas_station_id = @gas_station_id"
		MySQL.Sync.execute(Query,{					
			['@amount_money'] = money_amount,
			['@gas_station_id'] = gas_station_id
		})
	end 
	


	local Query = "INSERT INTO myfuel_balance(gas_station_id, costtype, fuel_type, fuel_amount, totalprice, fuel_singleprice, createddate) VALUES (@gas_station_id, @costtype, @fuel_type, @fuel_amount, @totalprice, @fuel_singleprice, now())" 
	MySQL.Sync.execute(Query,{					
		['@gas_station_id'] = gas_station_id,
		['@costtype'] = transfer_type,
		['@fuel_type'] = transfer_type,
		['@fuel_amount'] = 0,
		['@totalprice'] = money_amount,
		['@fuel_singleprice'] = money_amount
	})
	deleteUnnessaryBalances(gas_station_id)

	if transfer_type == "deposit" then 
		removePlayerMoney(_source, money_amount, Config.RemoveMoneyFromAccount, false, nil)
	else
		addPlayerMoney(_source, money_amount, Config.RemoveMoneyFromAccount)
	end

	local returndata = {
		availableMoney = getAvailableMoney(Config.BuyStuffDirectlyFromPlayer, gas_station_id, _source)
		,playermoney = getPlayerMoney(_source)
		,info = {}
		,cashbook = {}
	};



	Query = " SELECT" ..
			" myfuel_income_expenses.total_income as income" ..
			" ,myfuel_income_expenses.total_expenses as expenses" ..
		" FROM myfuel_gas_stations" ..
			" LEFT JOIN myfuel_income_expenses on myfuel_income_expenses.gas_station_id = myfuel_gas_stations.uid" ..
		" where myfuel_gas_stations.uid = @gas_station_id"
	returndata.info = MySQL.Sync.fetchAll(Query, {
		["@gas_station_id"] = gas_station_id
	})

	Query = "select costtype,fuel_type,fuel_amount,totalprice from myfuel_balance where gas_Station_id = @gas_station_id order by createddate desc limit " .. Config.CashbookAmountRows
	returndata.cashbook = MySQL.Sync.fetchAll(Query, {
		["@gas_station_id"] = gas_station_id
	})


	TriggerClientEvent("myFuel:updateNUI:TransferedMoney", _source, returndata)
end)


RegisterServerEvent("myFuel:pay")
AddEventHandler("myFuel:pay",function(new_fuel_percentage, vehicle, amounttopay, gas_station_id, fuel_type, fuel_amount,single_price, payment_type, isSociety, SocietyName)
	local _source = source

	local query = "UPDATE myfuel_stocks SET stock = stock - @fuel_amount WHERE gas_station_id = @gas_station_id AND fuel_type = @fuel_type"
	MySQL.Sync.execute(query, {
		['@fuel_amount'] = fuel_amount,
		['@gas_station_id'] = gas_station_id,
		['@fuel_type'] = fuel_type
	});

	
	local Query = " UPDATE myfuel_income_expenses SET total_income = total_income + @amount_money, last_update=now() where gas_station_id = @gas_station_id"
	MySQL.Sync.execute(Query,{					
		['@amount_money'] = amounttopay,
		['@gas_station_id'] = gas_station_id
	})


	local query = "INSERT INTO myfuel_balance(gas_station_id, costtype, fuel_type, fuel_amount, fuel_singleprice, totalprice, createddate) VALUES (@gas_station_id, @costtype, @fuel_type, @fuel_amount, @fuel_singleprice, @totalprice, now())"

	MySQL.Sync.execute(query, {
		['@gas_station_id'] = gas_station_id,
		['@costtype'] = "income",
		['@fuel_type'] = fuel_type,
		['@fuel_amount'] = fuel_amount,
		['@fuel_singleprice'] = single_price,
		['@totalprice'] = amounttopay
	});
	deleteUnnessaryBalances(gas_station_id)

	removePlayerMoney(_source, amounttopay, payment_type, isSociety, SocietyName)
	TriggerEvent("myFuel:SyncFuel", vehicle, new_fuel_percentage)
	local icon = Config.NotificationPicturePay
	local title = Translations[Config.Locale]["fuel_title"]
	TriggerClientEvent('myFuel:picturenotify', _source, icon, '~o~' .. fuel_amount .. 'l ' ..  UI_Translations[Config.Locale][fuel_type] .. Translations[Config.Locale]["fuel_pay"] .. single_price .. Translations[Config.Locale]["fuel_pay_2"] .. amounttopay .. '$', title, nil)

	
	refillNecessaryGasStations()
end)


RegisterServerEvent('myFuel:SyncFuel')
AddEventHandler('myFuel:SyncFuel',function(vehicle, new_fuel_level)
	TriggerClientEvent("myFuel:SyncFuel", -1, vehicle, new_fuel_level)
end)

RegisterServerEvent("myFuel:removejerrycan")
AddEventHandler("myFuel:removejerrycan",function()
	local _source = source
	removeItemFromPlayer(_source, Config.OxInventory.Itemname, 1)
end)

RegisterServerEvent("myFuel:buyJerryCan")
AddEventHandler("myFuel:buyJerryCan",function(gas_station_id, price, playerCoords)
	
	local _source = source
	local fuel_type = "gasoline"
	

	if Config.OxInventory.Enabled then
		local xPlayer = ESX.GetPlayerFromId(_source)
		xPlayer.addInventoryItem(Config.OxInventory.Itemname, 1)
	end

	removePlayerMoney(_source, price, Config.RemoveMoneyFromAccount, false, nil)

	if gas_station_id == nil then 
		print("[INFO] SOME PLAYER BAUGHT JERRY CAN WITHOUT PETROL STATION! COORDS = " .. playerCoords)
	else
			--check for fuel types... 1. gasoline, 2. diesel than the rest..
		local query = "SELECT fuel_type FROM myfuel_stocks where gas_station_id = @gas_station_id order by IF(fuel_type = 'gasoline',0, if(fuel_type='diesel',2,3)) limit 1"
		local data = MySQL.Sync.fetchAll(query, {
			['@gas_station_id'] = gas_station_id
		});

		if #data > 0 then 
			fuel_type = data[1].fuel_type
		end 
		
		local Query = " UPDATE myfuel_income_expenses SET total_income = total_income + @amount_money, last_update=now() where gas_station_id = @gas_station_id"
		MySQL.Sync.execute(Query,{					
			['@amount_money'] = price,
			['@gas_station_id'] = gas_station_id
		})

		local query = "UPDATE myfuel_stocks SET stock = stock - @fuel_amount WHERE gas_station_id = @gas_station_id AND fuel_type = @fuel_type"
		MySQL.Sync.execute(query, {
			['@fuel_amount'] = Config.PetrolCanRemoveLiters,
			['@gas_station_id'] = gas_station_id,
			['@fuel_type'] = fuel_type
		});

		local query = "INSERT INTO myfuel_balance(gas_station_id, costtype, fuel_type, fuel_amount, fuel_singleprice, totalprice, createddate) VALUES (@gas_station_id, @costtype, @fuel_type, @fuel_amount, @fuel_singleprice, @totalprice, now())"

		MySQL.Sync.execute(query, {
			['@gas_station_id'] = gas_station_id,
			['@costtype'] = "income",
			['@fuel_type'] = "petrolcan",
			['@fuel_amount'] = 1,
			['@fuel_singleprice'] = 0,
			['@totalprice'] = price
		});

		deleteUnnessaryBalances(gas_station_id)
		refillNecessaryGasStations()
	end 
end)

RegisterServerEvent("myFuel:SellGasStation")
AddEventHandler("myFuel:SellGasStation",function(gas_station_id)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local Query = " SELECT" ..
		" myfuel_gas_stations.price" .. 
		" ,myfuel_income_expenses.total_income as income" ..
		" ,myfuel_income_expenses.total_expenses as expenses" ..
		" FROM myfuel_gas_stations" ..
			" LEFT JOIN myfuel_income_expenses on myfuel_income_expenses.gas_station_id = myfuel_gas_stations.uid" ..
		" where myfuel_gas_stations.uid = @gas_station_id"
	local data = MySQL.Sync.fetchAll(Query, {
		["@gas_station_id"] = gas_station_id
	})


	if #data>0 then
		local money_to_add = (data[1].price * Config.SellPetrolStationMultiplier) + (data[1].income - data[1].expenses)

		Query = "UPDATE myfuel_gas_stations SET warehouse_level = 0, `owner` = '' where uid = @gas_station_id"
		MySQL.Sync.execute(Query, {
			['@gas_station_id'] = gas_station_id
		});
		
		addPlayerMoney(_source, money_to_add, Config.RemoveMoneyFromAccount)
		TriggerClientEvent("myFuel:notify", _source, Translations[Config.Locale].sold_For .. money_to_add)

			
		local Query = "INSERT INTO myfuel_income_expenses(gas_station_id,total_income,total_expenses,last_update) VALUES (@gas_station_id, 0, 0, NOW()) on duplicate key update total_income=VALUES(`total_income`), `total_expenses`=VALUES(`total_expenses`), last_update = VALUES(`last_update`)"
		MySQL.Sync.execute(Query,{					
			['@gas_station_id'] = gas_station_id
		})



		local Query = "DELETE FROM myfuel_balance WHERE uid > 0 and gas_station_id = @gas_station_id"
		MySQL.Sync.execute(Query, {
			['@gas_station_id'] = gas_station_id
		});


		TriggerClientEvent("myFuel:UpdateBlip", -1 ,gas_station_id, false, nil)
		
	end
end)

RegisterServerEvent("myFuel:BuyGasStation")
AddEventHandler("myFuel:BuyGasStation",function(amount_to_pay, gas_station_id)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if getPlayerMoney(_source) >= amount_to_pay then
		local playerGasStationCount = checkGasStationCount(xPlayer.identifier)

		if (playerGasStationCount + 1) <= Config.MaxAmountGasStationsPerPlayer then
		 	local Query = "INSERT INTO myfuel_income_expenses(gas_station_id,total_income,total_expenses,last_update) VALUES (@gas_station_id, 0, 0, NOW()) on duplicate key update total_income=VALUES(`total_income`), `total_expenses`=VALUES(`total_expenses`), last_update = VALUES(`last_update`)"
			MySQL.Sync.execute(Query, {
				["@gas_station_id"] = gas_station_id
			})

			local query = "DELETE FROM myfuel_balance WHERE uid > 0 and gas_station_id = @gas_station_id"
			MySQL.Sync.execute(query, {
				['@gas_station_id'] = gas_station_id
			});
	
			local query = "UPDATE myfuel_gas_stations SET `owner` = @owner where uid = @gas_station_id"
	
			MySQL.Sync.execute(query, {
				['@owner'] = xPlayer.identifier,
				['@gas_station_id'] = gas_station_id
			});

			removePlayerMoney(_source, amount_to_pay, Config.RemoveMoneyFromAccount, false, nil)
	
			TriggerClientEvent('myFuel:GasStationBuy_Success', _source)

			TriggerClientEvent("myFuel:UpdateBlip", -1 , gas_station_id, true, _source)

		else
			TriggerClientEvent('myFuel:notify', _source, Translations[Config.Locale].notification_too_many_gasstations)
		end


	else
		TriggerClientEvent('myFuel:GasStationBuy_MissingMoney', _source)
	end 
end)

function checkGasStationCount(identifier)

	local results = MySQL.Sync.fetchScalar('SELECT COUNT(uid) FROM myfuel_gas_stations WHERE owner = @owner', 
	{
		['@owner'] = identifier,
	})
	return results

end

RegisterServerEvent('myFuel:GetGasStations')
AddEventHandler('myFuel:GetGasStations', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	if xPlayer == nil then 
		TriggerClientEvent("myFuel:InitGasStations",_source, {})
	else 
		local Query = "SELECT *, ifnull(`owner`,'') as _owner FROM myfuel_gas_stations"
		local data = MySQL.Sync.fetchAll(Query, {})
	
		local result = {}
	
		for i=1, #data do
			table.insert(result,{
				pos = {x = data[i].posX, y = data[i].posY, z = data[i].posZ}
				,adminpos = {x = data[i].admin_posX, y = data[i].admin_posY, z = data[i].admin_posZ}
				,missionpos = {x = data[i].mission_spawn_poxX, y = data[i].mission_spawn_poxY, z = data[i].mission_spawn_poxZ, heading = tonumber(data[i].mission_spawn_heading)}
				,distance = 30.0
				,class = data[i].vehicleClass
				,price = data[i].price
				,db_id= data[i].uid
				,has_owner = data[i]._owner ~= "" or data[i].is_buyable == 0
				,playerisowner = data[i]._owner == getIdentifier(_source)
			})
		end 
		
		TriggerClientEvent("myFuel:InitGasStations",_source, result)
	end
end)



--functions for statebag
RegisterNetEvent('myFuel:initFuelForVehicle')
AddEventHandler('myFuel:initFuelForVehicle', function(vehicle)
	local veh = NetworkGetEntityFromNetworkId(vehicle)

	if veh ~= 0 then
		if Entity(veh).state.fuel == nil then 
			Entity(veh).state.fuel = math.random(20, 80)	
		end
		TriggerEvent("myFuel:SyncFuel", vehicle, Entity(veh).state.fuel)
	end
end)
-- end functions for statebag


--server callbacks
ESX.RegisterServerCallback('myFuel:checkMoney', function(source, cb, amount)
	if getPlayerMoney(source) >= amount then
		cb(true)
	else
		cb(false)
	end
end)

ESX.RegisterServerCallback('myFuel:checkAndRemoveItem', function(source, cb, amount)

	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getInventoryItem(Config.OxInventory.Itemname) ~= nil and xPlayer.getInventoryItem(Config.OxInventory.Itemname).count ~= nil then
		if xPlayer.getInventoryItem(Config.OxInventory.Itemname).count >= 1 then
			xPlayer.removeInventoryItem(Config.OxInventory.Itemname, 1)
			cb(true)
		else
			cb(false)
		end
	else
		prin('ITEM DOES NOT EXIST')
	end
end)



ESX.RegisterServerCallback('myFuel:GetOwnerInfo', function(source, cb, gas_station_id)
	local data = {
		self_fuel_info = {}
		,competitor_fuel_info = {}
		,cashbook = {}
		,info = {}
		,cashbook_max_rows = Config.CashbookAmountRows
		,possible_warehouse_levels = Config.WarehouseLevels
		,availableMoney = getAvailableMoney(Config.BuyStuffDirectlyFromPlayer, gas_station_id, source)
		,playermoney = getPlayerMoney(source)
		,import_percentage = Config.ImportPriceFromAveragePercentage / 100
		,gas_station_id = gas_station_id
	};



	local query = " SELECT" ..
			" warehouse_level" ..
			" ,logo_name" ..
			" ,myfuel_income_expenses.total_income as income" ..
			" ,myfuel_income_expenses.total_expenses as expenses" ..
		" FROM myfuel_gas_stations" ..
			" LEFT JOIN myfuel_income_expenses on myfuel_income_expenses.gas_station_id = myfuel_gas_stations.uid" ..
		" where myfuel_gas_stations.uid = @gas_station_id"
	data.info = MySQL.Sync.fetchAll(query, {
		["@gas_station_id"] = gas_station_id
	})
	
	query = "SELECT" ..  
		" myfuel_gas_stations.uid as gas_station_id " .. 
		", myfuel_stocks.*" ..
		" ,(select min(mys.price_per_liter) from myfuel_stocks as mys where mys.fuel_type = myfuel_classes.fueltype and gas_station_id <> myfuel_gas_stations.uid) as competitor_min_price" ..
    	" ,(select max(mys.price_per_liter) from myfuel_stocks as mys where mys.fuel_type = myfuel_classes.fueltype and gas_station_id <> myfuel_gas_stations.uid) as competitor_max_price" ..
     	" ,(select avg(mys.price_per_liter) from myfuel_stocks as mys where mys.fuel_type = myfuel_classes.fueltype and gas_station_id <> myfuel_gas_stations.uid) as competitor_avg_price" ..

		" FROM myfuel_gas_stations " ..
		" left join myfuel_classes on myfuel_classes.classname = myfuel_gas_stations.vehicleClass" ..
    	" left join myfuel_stocks on myfuel_stocks.gas_station_id = myfuel_gas_stations.uid" ..
			" and myfuel_stocks.fuel_type = myfuel_classes.fueltype" ..
		" where myfuel_gas_stations.uid = @gas_station_id"
	data.self_fuel_info = MySQL.Sync.fetchAll(query, {
		["@gas_station_id"] = gas_station_id
	})

	for i=1, #data.self_fuel_info do
		if Config.FuelTypes[data.self_fuel_info[i].fuel_type] ~= nil then 
			data.self_fuel_info[i].allowImport = Config.FuelTypes[data.self_fuel_info[i].fuel_type].allowImport
			data.self_fuel_info[i].allowMission = Config.FuelTypes[data.self_fuel_info[i].fuel_type].allowMission
			data.self_fuel_info[i].allowFillUpByItem = Config.FuelTypes[data.self_fuel_info[i].fuel_type].allowFillUpByItem
			data.self_fuel_info[i].fillUpitems = {}
			
			if Config.FuelTypes[data.self_fuel_info[i].fuel_type].allowFillUpByItem then 
				if Config.FuelTypes[data.self_fuel_info[i].fuel_type].fillupItems ~= nil then 

					for j=1, 3 do
						local currententry = Config.FuelTypes[data.self_fuel_info[i].fuel_type].fillupItems[j]
						table.insert(data.self_fuel_info[i].fillUpitems, currententry)
					end
				end 
			end 
		end 

	end
	
	query = "select costtype,fuel_type,fuel_amount,totalprice from myfuel_balance where gas_Station_id = @gas_station_id order by createddate desc limit " .. Config.CashbookAmountRows
	data.cashbook = MySQL.Sync.fetchAll(query, {
		["@gas_station_id"] = gas_station_id
	})

	cb(data)
end)



ESX.RegisterServerCallback('myFuel:getCurrentPrices', function(source, cb, gas_station_id)
	
	local Query = "SELECT * FROM gas_station_stocks where gas_station_id = @gas_station_id"
	local data = MySQL.Sync.fetchAll(Query, {
		["@gas_station_id"] = gas_station_id
	})

	local result = {}

	for i=1, #data do
		result[data[i].fuel_type] = data[i].price_per_liter
	end 
	cb(result)
end)


ESX.RegisterServerCallback('myFuel:getItemCount', function(source, cb, itemname)
	cb(getPlayerItemCount(source, itemname))
end)


ESX.RegisterServerCallback('myFuel:GetNecessaryFillupData', function(source, cb, gas_station_id, fuel_type)
	
	local xPlayer = ESX.GetPlayerFromId(source)
	
    local data = {
        bank_money = getPlayerBankMoney(source),
        cash_money = getPlayerCashMoney(source),
        database = {},
        logoname = Config.LogoName,
        wanted_fuel_type = fuel_type
    }
	
	local Query = "SELECT * FROM myfuel_gas_stations where uid = @gas_station_id"
	local temp = MySQL.Sync.fetchAll(Query, {
		["@gas_station_id"] = gas_station_id
		,["@fuel_type"] = fuel_type
	})

	if #temp > 0 then 
		data.logoname = temp[1].logo_name
	end 
	
	
	local Query = "SELECT * FROM myfuel_stocks where gas_station_id = @gas_station_id and fuel_type = @fuel_type"
	data.database = MySQL.Sync.fetchAll(Query, {
		["@gas_station_id"] = gas_station_id
		,["@fuel_type"] = fuel_type
	})
	cb(data)
end)

ESX.RegisterServerCallback('myFuel:CheckForGasStationOwner', function(source, cb, gas_station_id)

	local xplayer = ESX.GetPlayerFromId(source)

	local returnvalues = {
		playermoney = getPlayerMoney(source),
		gas_station_has_owner = false,
		gas_station_owned_by_user = false,
		price = 0,
		logoname = Config.LogoName,
		playerjob = xplayer.job.name
	}
	
	local Query = "SELECT *, ifnull(owner,'') as str_owner FROM myfuel_gas_stations where uid = @gas_station_id"
	local dbdata = MySQL.Sync.fetchAll(Query, {
		["@gas_station_id"] = gas_station_id
	})

	if #dbdata>0 then
		returnvalues.gas_station_has_owner = dbdata[1].str_owner ~= "" or dbdata[1].is_buyable == 0
		returnvalues.gas_station_owned_by_user = dbdata[1].str_owner == getIdentifier(source)
		returnvalues.price = dbdata[1].price
		returnvalues.logoname = dbdata[1].logo_name
	end
	cb(returnvalues)
end)

--functions

function getAvailableMoney(usePlayermoney, gas_station_id, _source)
	if usePlayermoney then 
		return getPlayerMoney(_source)
	else 
		local Query = " SELECT" ..
				" myfuel_income_expenses.total_income as income" ..
				" ,myfuel_income_expenses.total_expenses as expenses" ..
				" ,IFNULL(myfuel_income_expenses.total_income - myfuel_income_expenses.total_expenses,0) as total_money" ..

			" FROM myfuel_gas_stations" ..
				" LEFT JOIN myfuel_income_expenses on myfuel_income_expenses.gas_station_id = myfuel_gas_stations.uid" ..
			" where myfuel_gas_stations.uid = @gas_station_id"
		local data = MySQL.Sync.fetchAll(Query, {
			["@gas_station_id"] = gas_station_id
		})

		if #data>0 then 
			if data[1].income == nil or data[1].expenses == nil then 
				Query = "INSERT INTO myfuel_income_expenses(gas_station_id,total_income,total_expenses,last_update) VALUES (@gas_station_id, 0, 0, NOW()) on duplicate key update total_income=VALUES(`total_income`), `total_expenses`=VALUES(`total_expenses`), last_update = VALUES(`last_update`)"
				MySQL.Sync.execute(Query, {
					["@gas_station_id"] = gas_station_id
				})
			end 

			return data[1].total_money
		else
			return 0			
		end
	end 
end 

function resetUpdated()
	Query = "UPDATE myfuel_stocks SET updated = 0 where gas_station_id>0 and fuel_type>''"
	MySQL.Sync.execute(Query)
end 

function deleteNoneUpdated()
	local Query = "SELECT * FROM myfuel_stocks WHERE updated = 0"
	local data = MySQL.Sync.fetchAll(Query, {
	})

	if #data > 0 then 
		Query = "DELETE FROM myfuel_stocks WHERE updated = 0 AND gas_station_id>'' AND fuel_type>''"
		MySQL.Sync.execute(Query)
	end 
end 

function createNoneExistingData()
	local toInsertStations = {} 
	local toInsertStocks = {}

	local Query = "SELECT myfuel_gas_stations.uid as gas_station_id , myfuel_classes.fueltype FROM myfuel_gas_stations " ..
		" left join myfuel_classes on myfuel_classes.classname = myfuel_gas_stations.vehicleClass" ..
    	" left join myfuel_stocks on myfuel_stocks.gas_station_id = myfuel_gas_stations.uid" ..
			" and myfuel_stocks.fuel_type = myfuel_classes.fueltype" ..
		" where myfuel_stocks.fuel_type is null"
	toInsertStocks = MySQL.Sync.fetchAll(Query, {
	})

	local insertDataStock = ""
	for key, row in pairs(toInsertStocks) do
		
		if insertDataStock ~= "" then 
			insertDataStock = insertDataStock .. ","
		end 
		insertDataStock = insertDataStock .. "('" .. row.gas_station_id .. "', '" .. row.fueltype .. "', '" .. Config.FuelTypes[row.fueltype].defaultSalesPriceMax  .. "', '" .. Config.WarehouseLevels[1].capacity .. "', 1 )"
	end 

	if insertDataStock~= "" then 
		Query = "INSERT INTO myfuel_stocks(gas_station_id, fuel_type, price_per_liter, stock, updated) VALUES " .. insertDataStock
		MySQL.Sync.execute(Query)
	end 
end 


function randomizePrices()
	local Query = "" .. 

		" SELECT"..
			"  myfuel_stocks.*"..
			" ,(myfuel_gas_stations.`owner` = '' or myfuel_gas_stations.`owner` is null) as noOwner"..
		" FROM myfuel_gas_stations "..
			" left join myfuel_stocks on myfuel_stocks.gas_station_id = myfuel_gas_stations.uid"..
			" LEFT JOIN myfuel_classes on myfuel_classes.fueltype = myfuel_stocks.fuel_type"..
				" and myfuel_classes.classname = myfuel_gas_stations.vehicleClass"..
		" WHERE myfuel_classes.uid is not null"
		--[[
		" SELECT" ..
			"*" .. 
			",(select count(*)>0 from myfuel_gas_stations where uid = gas_station_id and (`owner` = '' or `owner` is null)) as noOwner" .. 
		" FROM myfuel_stocks" 
		--]]
		
	local stocksToUpdate = MySQL.Sync.fetchAll(Query, {})

	for key, data in pairs(stocksToUpdate) do 


		if data.noOwner == 1 then 
			local min = math.floor(tonumber(Config.FuelTypes[data.fuel_type].defaultSalesPriceMin*100))
			local max = math.floor(tonumber(Config.FuelTypes[data.fuel_type].defaultSalesPriceMax*100))
			
			local rdmPrice = math.random(min ,max )
			
			rdmPrice = rdmPrice / 100

			local updateQuery = "UPDATE myfuel_stocks SET price_per_liter = @price, updated = 1 WHERE gas_station_id = @gas_station_id AND fuel_type = @fuel_type"

			MySQL.Sync.execute(updateQuery,
			{					
				['@price'] = rdmPrice
				,['@gas_station_id'] = data.gas_station_id
				,['@fuel_type'] = data.fuel_type	
			})
		else
			local updateQuery = "UPDATE myfuel_stocks SET updated = 1 WHERE gas_station_id = @gas_station_id AND fuel_type = @fuel_type"

			MySQL.Sync.execute(updateQuery,
			{					
				['@gas_station_id'] = data.gas_station_id
				,['@fuel_type'] = data.fuel_type	
			})
		end 
	end 	
end 

function refillNecessaryGasStations()
	local Query = "UPDATE myfuel_stocks SET stock = @stock WHERE stock <= @minstock and gas_station_id>0 and fuel_type<>'' and (select count(*) from myfuel_gas_stations where uid = myfuel_stocks.gas_station_id and (`owner`<>'' and owner is not null)) = 0"	
	MySQL.Sync.execute(Query, {
		["@stock"] = Config.StockToSetIfLowerMin
		,["@minstock"] = Config.MinStockNoOwner
	})

end 


function getIdentifier(_source)
	local xPlayer = ESX.GetPlayerFromId(_source)
	return xPlayer.identifier
end 

function removePlayerMoney(_source, amount, payment_type, isSociety, SocietyName)
	local xPlayer = ESX.GetPlayerFromId(_source)

	if isSociety == false then 
		if payment_type == "bank" then 
			xPlayer.removeAccountMoney('bank', amount)
		else
			xPlayer.removeMoney(amount)
		end 
	else
		TriggerEvent('esx_addonaccount:getSharedAccount', SocietyName, function(account)
			account.removeMoney(amount)	
		end)
	end 
end 


function addPlayerMoney(_source, amount, payment_type)
	local xPlayer = ESX.GetPlayerFromId(_source)

	if payment_type == "bank" then 
		xPlayer.addAccountMoney('bank', amount)
	else
		xPlayer.addAccountMoney('money', amount)
	end 
end 

function getPlayerMoney(_source)
	if Config.RemoveMoneyFromAccount == "bank" then 
		return getPlayerBankMoney(_source)
	else
		return getPlayerCashMoney(_source)
	end 
end 

function getPlayerBankMoney(_source)
	local xPlayer = ESX.GetPlayerFromId(_source)
	return xPlayer.getAccount("bank").money
end

function getPlayerCashMoney(_source)
	local xPlayer = ESX.GetPlayerFromId(_source)
	return xPlayer.getAccount("money").money
end 

function getPlayerItemCount(_source, itemname)
	local xPlayer = ESX.GetPlayerFromId(_source)
	return xPlayer.getInventoryItem(itemname).count
end 

function removeItemFromPlayer(_source, itemname, amount)
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem(itemname, amount)
end 


function deleteUnnessaryBalances(gas_station_id)
	local query = "SELECT uid FROM myfuel_balance "..
		" where gas_station_id = @gas_station_id" .. 
		" order by uid DESC" .. 
		" limit " .. Config.CashbookAmountRows .. ",1000000" 
	local data = MySQL.Sync.fetchAll(query,{					
		['@gas_station_id'] = gas_station_id
	})

	if #data > 0 then 
		for i=1, #data do

			query = "DELETE FROM myfuel_balance where uid = @uid"
			MySQL.Sync.execute(query,{					
				['@uid'] = data[i].uid
			})
		end
	end 
end 