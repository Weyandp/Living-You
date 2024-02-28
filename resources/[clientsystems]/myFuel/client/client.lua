ESX = exports["es_extended"]:getSharedObject()

local BlipData = {}

local PetrolCan = GetHashKey("WEAPON_PETROLCAN")

local CharIsBusy = false
local UIIsOpen = false

local CurrentVehicleData = nil
local PlayerInVehicle = false
local PlayerIsDriver = false
local currentVehicle = nil 
local currentMessage = nil
local PlayerNearFuelPump = false
local PlayerIsFillingVehicle = false
local GasStationPrices = {}
local DefinedGasStations = {}
local isInAdminSpot = false
local AdminSpotGasStationID = nil
local currentMessageAdmin = ""
local pumpLocation = nil
local fuelSynced = false
local globalRopeObject = nil
local globalNozzleObject = nil
local holdingNozzle = false
local createdExtraPumps = {}

local GetGasStationInProgress = false

Citizen.CreateThread(function()
	while #DefinedGasStations == 0 do
		Citizen.Wait(250)
		if GetGasStationInProgress == false then 
			TriggerServerEvent('myFuel:GetGasStations')
			GetGasStationInProgress = true
		end 
	end
end)

Citizen.CreateThread(function()
	
	for key, values in pairs(Config.CustomPumpLocations) do

		if values.location ~= nil then 
			
				RequestModel(values.model)
				while not HasModelLoaded(values.model) do
					Citizen.Wait(0)
				end
				local pump = CreateObject(values.model,values.location[1],values.location[2], values.location[3] - 1.0 , false, true, true)
				
				SetEntityHeading(pump, values.location[4])
				FreezeEntityPosition(pump, true)

				table.insert(createdExtraPumps, pump)
			
		end 
	end
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(250)
		if isInVehicle(PlayerPedId()) then -- beim einsteigen
			if PlayerInVehicle == false then 
				currentVehicle = getVehicle(PlayerPedId())
				PlayerInVehicle = true
				CurrentVehicleData = getVehicleData(currentVehicle)
			end 

			PlayerIsDriver = isPlayerDriver(currentVehicle)


		elseif PlayerInVehicle then --beim aussteigen
			PlayerIsDriver = false
			PlayerInVehicle = false
		end 
	end
end)

Citizen.CreateThread(function()
	DecorRegister(Config.FuelVariable, 1)

	while true do
		Citizen.Wait(1000)

		local ped = PlayerPedId()

		if PlayerInVehicle then 
			if PlayerIsDriver then 
				handleFuelUsage(currentVehicle, CurrentVehicleData)
			end 
		else
			if fuelSynced then
				fuelSynced = false
			end
		end 
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if (currentMessage ~= nil or currentMessageAdmin ~= nil) and UIIsOpen == false then

			local msg = currentMessageAdmin
			if currentMessageAdmin == nil then 
				msg = currentMessage
			end 

			ESX.ShowHelpNotification(msg)
		else 
			Citizen.Wait(1)
		end 
	end
end)

local pumpClass = nil

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(250)

		local pumpObject, pumpDistance = FindNearestFuelPump()

		if pumpDistance < 2.5 then
			pumpLocation = nil
			pumpClass = nil

			for k,v in pairs(DefinedGasStations) do
				if #(vector3(v.pos.x,v.pos.y,v.pos.z) - GetEntityCoords(pumpObject)) <= v.distance then
					pumpLocation = v.db_id
					pumpClass = v.class
				end
			end 			

			PlayerNearFuelPump = pumpObject
		else
			PlayerNearFuelPump = false
			Citizen.Wait(math.ceil(pumpDistance * 20))
		end
	end
end)


-- draw markers
Citizen.CreateThread(function()
	while true do		
		if UIIsOpen == false then
			Citizen.Wait(1)

			local playerCoords = GetEntityCoords(PlayerPedId())
			local executeSleep = true
			local ped = PlayerPedId()
			local playerCoords = GetEntityCoords(ped)


			for key, values in pairs(DefinedGasStations) do
				local distance = #(playerCoords - vector3(values.adminpos.x, values.adminpos.y, values.adminpos.z))
				if distance < Config.MarkerDrawDistance then
					DoDrawMarker(values.adminpos)
					executeSleep = false
				end
			end 

			if executeSleep then
				Citizen.Wait(1000)
			end
		else
			Citizen.Wait(250)
		end
	end
end)


-- show notification
Citizen.CreateThread(function()  
	while true do
		Citizen.Wait(350)
		isInAdminSpot = false
  
		if UIIsOpen == false then
			local ped = PlayerPedId()
			local playerCoords = GetEntityCoords(ped)

			if IsPedInAnyVehicle(GetPlayerPed(-1)) == false then
				if DoesEntityExist(ped)then
					if IsPedDeadOrDying(ped) == false then
						
						for key2, values2 in pairs(DefinedGasStations) do
							local distance = #(playerCoords - vector3(values2.adminpos.x, values2.adminpos.y, values2.adminpos.z))
							if distance < Config.MarkerActiveDistance then
								isInAdminSpot = true
								AdminSpotGasStationID = values2.db_id
								currentMessageAdmin = Translations[Config.Locale].notification_interact_with_gas_station
							end
						end 

						
						
					end
				end
			end
		end 
		if isInAdminSpot == false then
			currentMessageAdmin = nil
		end
	  end 
end)


Citizen.CreateThread(function()  
	while true do
		
		if isInAdminSpot and UIIsOpen == false then 
			if IsControlJustReleased(0, 38) then
				ESX.TriggerServerCallback('myFuel:CheckForGasStationOwner', function(data)
					-- if data.playerjob == 'fueljob' then 
					if data.gas_station_has_owner == true then
						if data.gas_station_owned_by_user then 
							OpenGasStationAdminPanel(AdminSpotGasStationID)
						else
							
							TriggerEvent("myFuel:notify", Translations[Config.Locale].notification_not_for_sell)
						end 

					else
						UIIsOpen = true
						SetNuiFocus(true, true)
						SendNUIMessage({ message = "show_buy_menu",locale = Config.Locale, gas_station_id = AdminSpotGasStationID , playermoney = data.playermoney, price = data.price, logo_name = data.logoname })
					end	
					-- end				
				end, AdminSpotGasStationID)
			end
			Citizen.Wait(0)
		else
			Citizen.Wait(250)
		end
	end 
end)

Citizen.CreateThread(function()
	while true do
		local ped = PlayerPedId()
		if CharIsBusy == false then 
			if IsPedInAnyVehicle(ped) == false then 
				local vehicle = GetPlayersLastVehicle()
				local vehicleCoords = GetEntityCoords(vehicle)
				local playerCoords = GetEntityCoords(ped)
				local vehicledata = getVehicleData(vehicle)

				local maxDistance = 2.5

				if pumpClass == "boat" then 
					maxDistance = 10.0
				elseif pumpClass == "planes" and vehicledata.maxCapacity > 100 then 
					maxDistance = 15.0
				end 

				if DoesEntityExist(vehicle) and #(playerCoords - vehicleCoords) < maxDistance and GetVehicleFuelLevel(vehicle) < 95 then
					if PlayerNearFuelPump and GetEntityHealth(PlayerNearFuelPump) > 0 and DoesEntityExist(vehicle) then --fill up at pump
						currentMessage = Translations[Config.Locale].notification_fuelpump_fill_car

						if IsControlJustReleased(0, 38) then

							local showFillingView = false

							if Config.UseFuelNozzle then 

								local lastFuelPump = PlayerNearFuelPump

								local nozzleActive = true
								globalRopeObject, globalNozzleObject, holdingNozzle = grabNozzleFromFuelPump(PlayerNearFuelPump)
								local isBike, tankBone, nozzleDesinationPos = getTankBone(vehicle, vehicledata.fuelType)
								local tankPosition = GetWorldPositionOfEntityBone(vehicle, tankBone)

								while holdingNozzle do
									local pumpdistance = #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(lastFuelPump))

									if isVehicleInFront(vehicle, pumpClass) then
										currentMessage = Translations[Config.Locale].notification_fuelpump_nozzle_put_in_vehicle
										if IsControlJustReleased(0, 38) then
											putNozzleInVehicle(globalNozzleObject,vehicle, tankBone, isBike, true, nozzleDesinationPos)
											showFillingView = true
											holdingNozzle = false
										end 
									else
										currentMessage = Translations[Config.Locale].notification_fuelpump_nozzle_put_back
										if IsControlJustReleased(0, 38) then
											returnNozzleToFuelpump(globalNozzleObject, globalRopeObject, true)
											holdingNozzle = false
										end 
									end
									
									if pumpdistance > Config.NozzleMaxDistanceInHand then 
										returnNozzleToFuelpump(globalNozzleObject, globalRopeObject, false)
										holdingNozzle = false
										TriggerEvent("myFuel:notify", Translations[Config.Locale].notification_moved_to_far_away)						
									elseif DoesEntityExist(vehicle) == false then 
										returnNozzleToFuelpump(globalNozzleObject, globalRopeObject, false)
										holdingNozzle = false						
									elseif IsPedInAnyVehicle(PlayerPedId()) then 
										returnNozzleToFuelpump(globalNozzleObject, globalRopeObject, false)
										holdingNozzle = false
									end 
									Citizen.Wait(0)
								end 
							else
								showFillingView = true
							end  

							if showFillingView then 
								local isSocietyVeh, SocietyName = isSocietyVehicle(vehicle)
								openUI(pumpLocation, false, GetFuel(vehicle), vehicledata.maxCapacity, vehicledata.fuelType, isSocietyVeh, SocietyName)
							end
						end
					elseif GetSelectedPedWeapon(ped) == PetrolCan or (Config.OxInventory.Enabled and Config.PetrolCanRemoveSpamming==false) then -- here fill up via petrol can..
						ESX.ShowHelpNotification(Translations[Config.Locale].notification_fill_by_can)
						if IsControlJustReleased(0, 18) then
							if Config.OxInventory.Enabled then
								ESX.TriggerServerCallback('myFuel:checkAndRemoveItem', function(hasItem)
									if hasItem then
										LoadAnimDict("timetable@gardener@filling_can")
										TaskPlayAnim(ped, "timetable@gardener@filling_can", "gar_ig_5_filling_can", 2.0, 8.0, -1, 50, 0, 0, 0, 0)
			
										Citizen.Wait(4000)
										
										ClearPedTasks(ped)
										RemoveAnimDict("timetable@gardener@filling_can")
			
										-- if Config.OxInventory.Enabled then
										-- 	TriggerServerEvent("myFuel:removejerrycan")
										-- else
										-- 	RemoveWeaponFromPed(ped, PetrolCan)
										-- end
										if DoesEntityExist(vehicle) then
											local newFuel = math.ceil(GetVehicleFuelLevel(vehicle)) + Config.PetrolCanRemoveLiters
											SetFuel(vehicle, newFuel)
										end
			
										TriggerEvent("myFuel:notify", Translations[Config.Locale].notification_fueled_by_can)
									else
										print('no petrol can item')
									end
								
								end)
							else

								LoadAnimDict("timetable@gardener@filling_can")
								TaskPlayAnim(ped, "timetable@gardener@filling_can", "gar_ig_5_filling_can", 2.0, 8.0, -1, 50, 0, 0, 0, 0)
	
								Citizen.Wait(4000)
								
								ClearPedTasks(ped)
								RemoveAnimDict("timetable@gardener@filling_can")
	
								if Config.OxInventory.Enabled then
									TriggerServerEvent("myFuel:removejerrycan")
								else
									RemoveWeaponFromPed(ped, PetrolCan)
								end
								if DoesEntityExist(vehicle) then
									local newFuel = math.ceil(GetVehicleFuelLevel(vehicle)) + 5
									SetFuel(vehicle, newFuel)
								end
	
								TriggerEvent("myFuel:notify", Translations[Config.Locale].notification_fueled_by_can)
							end

						end
					else
						currentMessage = nil
						Citizen.Wait(0)
					end 


				elseif PlayerNearFuelPump and GetEntityHealth(PlayerNearFuelPump) > 0 then 
						if Config.AllowPetrolCans and not HasPedGotWeapon(ped, PetrolCan) then 
							ESX.ShowHelpNotification(Translations[Config.Locale].notification_buy_can .. ' (~o~' .. Config.PetrolCanPrice .. '$~s~)')
							if IsControlJustReleased(0, 38) then
								ESX.TriggerServerCallback('myFuel:checkMoney', function(hasEnoughMoney)
									if hasEnoughMoney then
										-- log entry and add money to fuel station
										TriggerServerEvent('myFuel:buyJerryCan', pumpLocation, Config.PetrolCanPrice, GetEntityCoords(PlayerPedId()))
										if not Config.OxInventory.Enabled then
											GiveWeaponToPed(PlayerPedId(), PetrolCan, 100, false, true)
										end
										
									else
										TriggerEvent("myFuel:notify", Translations[Config.Locale].notification_too_less_money)
									end
								end, Config.PetrolCanPrice)
								
							end	
						end 
				else
					currentMessage = nil
					Citizen.Wait(0)
				end 
			else
				currentMessage = nil
				Citizen.Wait(0)
			end 
		else
			currentMessage = nil
			Citizen.Wait(0)
		end 

		Citizen.Wait(0)
	end
end)


if Config.ShowNearestGasStationOnly then
	Citizen.CreateThread(function()
		local currentGasBlip = 0
		local lastCoordsFound = nil 
		local lastBlipHasOwner = false
		local lastBlipPlayerIsOwner = false

		local BlipNeedsUpdate = false

		while true do
			

			local coords = GetEntityCoords(PlayerPedId())
			local closest = 1000
			local closestCoords = nil
			local hasowner = false
			local playerisowner = false
			local gasstationid = nil

			for _, gasStationData in pairs(DefinedGasStations) do

				local gasStationCoords = vector3(gasStationData.pos.x,gasStationData.pos.y,gasStationData.pos.z)

				local dstcheck = #(coords - gasStationCoords)

				hasowner = gasStationData.has_owner
				playerisowner = gasStationData.playerisowner
				gasstationid = gasStationData.db_id
				

				
				if hasowner and playerisowner then 
					if BlipData[gasStationData.db_id] == nil then 
						local blip =  CreateBlip(gasStationCoords, Config.GasStationBlip, hasowner, playerisowner)
						BlipData[gasStationData.db_id] = blip
					end 
				elseif dstcheck < closest then
					closest = dstcheck
					closestCoords = gasStationCoords
				end 
			end


			if lastCoordsFound ~= closestCoords then 
				if BlipData[gasstationid] ~=nil then
					RemoveBlip(BlipData[gasstationid])
					BlipData[gasstationid] = nil 
				end
				BlipData[gasstationid] = CreateBlip(closestCoords, Config.GasStationBlip, hasowner, playerisowner)
			end 

			Citizen.Wait(1000)
		end
	end)
elseif Config.ShowGasStationsOnMap then
	Citizen.CreateThread(function()
		local blipscreated = false 
		while blipscreated == false do
			if #DefinedGasStations>0 then 
				for _, gasStationData in pairs(DefinedGasStations) do
					local gasStationCoords = vector3(gasStationData.pos.x, gasStationData.pos.y,gasStationData.pos.z)
					local blip =  CreateBlip(gasStationCoords, Config.GasStationBlip, gasStationData.has_owner, gasStationData.playerisowner)

					BlipData[gasStationData.db_id] = blip
				end

				blipscreated = true
			end

			
			Citizen.Wait(0)
		end 
	end)
end

if Config.EnableUIHUD then 

	local mph = 0
	local kmh = 0
	local fuel = 0
	local fuel_in_unit = ""
	local displayHud = false

	local x = 0.01135
	local y = 0.002

	Citizen.CreateThread(function()
		while true do
			local ped = PlayerPedId()

			if IsPedInAnyVehicle(ped) then
				local vehicle = GetVehiclePedIsIn(ped)
				local speed = GetEntitySpeed(vehicle)

				mph = tostring(math.ceil(speed * 2.236936))
				kmh = tostring(math.ceil(speed * 3.6))
				fuel = tostring(math.ceil(GetFuel(vehicle)))
				fuel_in_unit = GetFuelInUnit(vehicle) .. "" .. GetFuelUnit(vehicle)

				local displayspeed = kmh
				if Config.SpeedUnit ~= "kmh" then 
					displayspeed = mph
				end 

				if displayHud == false then 
					SendNUIMessage({ 
						message = "show_driverview", 
						ShowSpeed = Config.ShowSpeed, 
						ShowFuelLevel = Config.ShowFuelLevel, 
						SpeedUnit = Config.SpeedUnit, 
						HudLocation = Config.HudLocation, 
						HUDFuelCritical = Config.HUDFuelCritical, 
						HUDFuelWarning = Config.HUDFuelWarning, 
						HUDextraMargins = Config.HUDextraMargins,
						ShowFuelInPercentage = Config.ShowFuelInPercentage, 	
						HUDRemoveBackground = Config.HUDRemoveBackground, 	
						speed = 0,
						fuel_level = 0,
						fuel_in_unit = ""
					})

					displayHud = true	
				end 


				SendNUIMessage({ 
					message = "show_driverview",
					speed = displayspeed,
					fuel_level = fuel,
					fuel_in_unit = fuel_in_unit,
					ShowSpeed = Config.ShowSpeed, 
					ShowFuelLevel = Config.ShowFuelLevel, 
					SpeedUnit = Config.SpeedUnit, 
					HudLocation = Config.HudLocation, 
					HUDFuelCritical = Config.HUDFuelCritical, 
					HUDFuelWarning = Config.HUDFuelWarning, 
					HUDextraMargins = Config.HUDextraMargins, 				
					ShowFuelInPercentage = Config.ShowFuelInPercentage, 	
					HUDRemoveBackground = Config.HUDRemoveBackground, 				

				})
				
				
			else

				if displayHud == true then 
					displayHud = false

					SendNUIMessage({ message = "hide_driverview"})
				end 

				

				Citizen.Wait(500)
			end

			Citizen.Wait(50)
		end
	end)
end 

if Config.EnableHUD then
	local function DrawAdvancedText(x,y ,w,h,sc, text, r,g,b,a,font,jus)
		SetTextFont(font)
		SetTextProportional(0)
		SetTextScale(sc, sc)
		N_0x4e096588b13ffeca(jus)
		SetTextColour(r, g, b, a)
		SetTextDropShadow(0, 0, 0, 0,255)
		SetTextEdge(1, 0, 0, 0, 255)
		SetTextDropShadow()
		SetTextOutline()
		SetTextEntry("STRING")
		AddTextComponentString(text)
		DrawText(x - 0.1+w, y - 0.02+h)
	end

	local mph = 0
	local kmh = 0
	local fuel = 0
	local displayHud = false

	local x = 0.01135
	local y = 0.002

	Citizen.CreateThread(function()
		while true do
			local ped = PlayerPedId()

			if IsPedInAnyVehicle(ped) then
				local vehicle = GetVehiclePedIsIn(ped)
				local speed = GetEntitySpeed(vehicle)

				mph = tostring(math.ceil(speed * 2.236936))
				kmh = tostring(math.ceil(speed * 3.6))
				fuel = tostring(math.ceil(GetVehicleFuelLevel(vehicle)))
				

				displayHud = true
			else
				displayHud = false

				Citizen.Wait(500)
			end

			Citizen.Wait(50)
		end
	end)

	Citizen.CreateThread(function()
		while true do
			if displayHud then
				-- DrawAdvancedText(0.130 - x, 0.77 - y, 0.005, 0.0028, 0.6, mph, 255, 255, 255, 255, 6, 1)
				-- DrawAdvancedText(0.174 - x, 0.77 - y, 0.005, 0.0028, 0.6, kmh, 255, 255, 255, 255, 6, 1)
				-- DrawAdvancedText(0.2195 - x, 0.77 - y, 0.005, 0.0028, 0.6, fuel, 255, 255, 255, 255, 6, 1)
				DrawAdvancedText(0.212 - x, 0.77 - y, 0.005, 0.0028, 0.6, fuel .. '%', 255, 255, 255, 255, 6, 1)
				-- DrawAdvancedText(0.148 - x, 0.7765 - y, 0.005, 0.0028, 0.4, "mp/h              km/h              Fuel", 255, 255, 255, 255, 6, 1)
				DrawAdvancedText(0.2375  - x, 0.7765 - y, 0.005, 0.0028, 0.4, "Fuel", 255, 255, 255, 255, 6, 1)
			else
				Citizen.Wait(750)
			end

			Citizen.Wait(0)
		end
	end)
end




-- EVENTS 
RegisterNetEvent("myFuel:GasStationBuy_Success")
AddEventHandler("myFuel:GasStationBuy_Success",function()
	OpenGasStationAdminPanel(AdminSpotGasStationID)
end)



RegisterNetEvent("myFuel:UpdateBlip")
AddEventHandler("myFuel:UpdateBlip",function(gas_station_id, hasOwner, playeridOwner)
	local iAmOwner = false

	if playeridOwner ~= nil then 
		iAmOwner = PlayerId() == GetPlayerFromServerId(playeridOwner)
	end



	--get defined Gas Station
	if #DefinedGasStations>0 then 
		for _, gasStationData in pairs(DefinedGasStations) do
			if gasStationData.db_id == gas_station_id then 
				
				DefinedGasStations[_].has_owner = hasOwner
				DefinedGasStations[_].playerIsOwner = iAmOwner
				
				if BlipData[gas_station_id] ~= nil then 
					RemoveBlip(BlipData[gas_station_id])
					BlipData[gasStationData.db_id] = nil
				end 

				if Config.ShowGasStationsOnMap then 
					local gasStationCoords = vector3(gasStationData.pos.x, gasStationData.pos.y,gasStationData.pos.z)
					local blip =  CreateBlip(gasStationCoords, Config.GasStationBlip, hasOwner, iAmOwner)
	
					BlipData[gasStationData.db_id] = blip
				end 
			end 
		end
	end 
end)

RegisterNetEvent("myFuel:GasStationBuy_MissingMoney")
AddEventHandler("myFuel:GasStationBuy_MissingMoney",function()
	closeUI();
	TriggerEvent("myFuel:notify", Translations[Config.Locale].notification_too_less_money)
end)

RegisterNetEvent("myfuel:handleItemFillupUI")
AddEventHandler("myfuel:handleItemFillupUI",function(message, ui_data)

	if message ~= "" then 
		TriggerEvent("myFuel:notify", message)
	end

	if UIIsOpen then 
		SendNUIMessage({ message = "updateOwnerView", updateDetails = "itemButtonUpdate", data = ui_data });
	end
end)

RegisterNetEvent("myFuel:SyncFuel")
AddEventHandler("myFuel:SyncFuel",function(veh, new_fuel_level)
	if NetworkDoesNetworkIdExist(veh) then
		local vehicle = NetToVeh(veh)
		if DoesEntityExist(vehicle) then
			SetFuel(vehicle, new_fuel_level)
		end
	end 
end)





RegisterNetEvent('myfuel:useitem')
AddEventHandler('myfuel:useitem', function(data)
	if Config.FillingUpJobs.Enabled then 
		if PlayerNearFuelPump and GetEntityHealth(PlayerNearFuelPump) > 0 then 
			ESX.TriggerServerCallback('myFuel:CheckForGasStationOwner', function(retdata)

				if data.gas_station_has_owner == false then
					local jobFound = false 
					for i=1, #Config.FillingUpJobs.JobList do
						if Config.FillingUpJobs.JobList[i] == retdata.playerjob then
							jobFound = true
						end
					end

					if jobFound then 				
						TaskTurnPedToFaceEntity(PlayerPedId(),PlayerNearFuelPump,5000)
						LoadAnimDict("timetable@gardener@filling_can")
						TaskPlayAnim(PlayerPedId(),"timetable@gardener@filling_can","gar_ig_5_filling_can",2.0,8.0,-1,50,0,0,0,0)
						FreezeEntityPosition(PlayerPedId(), true)	
						Citizen.Wait(data.Waittime)
						FreezeEntityPosition(PlayerPedId(), false)	
						removeAnimation()

						TriggerServerEvent(
							'myFuel:UpdateStock'
							,pumpLocation
							,data.fuel_to_fillup
							,data.item
							,data.label
							,data.fillupAmountPerItem
							,""
							,1
							,data.paymentForFillup
							,false
						)
					end 
				else
					TriggerEvent("myFuel:notify", Translations[Config.Locale].gas_station_cannot_fillup_owner)
				end 
			end, pumpLocation)
		end 
	end 
end)


RegisterNetEvent('myFuel:InitGasStations')
AddEventHandler('myFuel:InitGasStations', function(data)
    DefinedGasStations = data
	GetGasStationInProgress = false
end)

RegisterNetEvent('myFuel:updateNUI:levelup_warehouse')
AddEventHandler('myFuel:updateNUI:levelup_warehouse', function(serverdata)
	if UIIsOpen then 
		SendNUIMessage({ message = "updateOwnerView", updateDetails = "warehouselevel", data = serverdata})
	end
end)

RegisterNetEvent('myFuel:updateNUI:set_new_fuel_price')
AddEventHandler('myFuel:updateNUI:set_new_fuel_price', function(serverdata)
	if UIIsOpen then 
		SendNUIMessage({ message = "updateOwnerView", updateDetails = "fuel_price", data = serverdata})
	end
end)

RegisterNetEvent('myFuel:updateNUI:bought_fuel')
AddEventHandler('myFuel:updateNUI:bought_fuel', function(serverdata)
	if UIIsOpen then 
		SendNUIMessage({ message = "updateOwnerView", updateDetails = "boughtFuel", data = serverdata})
	end
end)

RegisterNetEvent('myFuel:updateNUI:TransferedMoney')
AddEventHandler('myFuel:updateNUI:TransferedMoney', function(serverdata)
	if UIIsOpen then 
		SendNUIMessage({ message = "updateOwnerView", updateDetails = "TransferedMoney", data = serverdata})
	end
end)

RegisterNetEvent("myFuel:notify")
AddEventHandler("myFuel:notify", function(notificationtext)
	if Config.notifications.BtwLouis then
		TriggerEvent('notifications', '#07b95e', '', notificationtext)
	elseif Config.notifications.DefaultFiveM then
			SetNotificationTextEntry('STRING')
			AddTextComponentString(notificationtext)
			DrawNotification(false, false)
	elseif Config.notifications.Custom then
		--here your custom code...
	end
end)

RegisterNetEvent("myFuel:picturenotify")
AddEventHandler("myFuel:picturenotify", function(icon, msg, title, subtitle)
	if Config.notifications.BtwLouis then
		TriggerEvent('notifications', '#07b95e', '', msg)
	elseif  Config.notifications.DefaultFiveM then 
		SetNotificationTextEntry("STRING")
		AddTextComponentString(msg);
		SetNotificationMessage(icon, icon, true, 1, title, subtitle);
		DrawNotification(false, true);
	elseif Config.notifications.Custom then 
		--here your custom code...
	end 
end)


--NUI CALLBACKS
RegisterNUICallback('escape', function(data, cb)
    close()
	local ped = PlayerPedId()
	ClearPedTasks(ped)
	RemoveAnimDict("timetable@gardener@filling_can")
	cb({})
end)


RegisterNUICallback('getTranslations', function(data, cb)
	if UI_Translations[Config.Locale] ~= nil then 
		cb({ locale=Config.Locale, translations = UI_Translations[Config.Locale]})	
	else
		cb({ locale="en", translations = UI_Translations["en"] })	
	end 
end)

RegisterNUICallback('getItemCount', function(uidata, uicb)

	ESX.TriggerServerCallback('myFuel:getItemCount', function(data)
		local retdata = {count = data}
		uicb(retdata)
	end, uidata.itemname)
end)


RegisterNUICallback('BuyGasStation', function(data, cb)
	local amount_to_pay = tonumber(data.amount_to_pay)
	local gas_station_id = data.gas_station_id

	TriggerServerEvent(
		'myFuel:BuyGasStation'
		,amount_to_pay
		,gas_station_id
	)
	
	cb({})
end)
RegisterNUICallback('SellGasStation', function(data, cb)
	local gas_station_id = data.gas_station_id

	closeUI();

	TriggerServerEvent(
		'myFuel:SellGasStation'
		,gas_station_id
	)
		
	cb({})
end)

RegisterNUICallback('OwnerFillUpByItem', function(ui_data, ui_cb)
	TriggerServerEvent(
		'myFuel:UpdateStock'
		,ui_data.gas_station_id
		,ui_data.fuel_type
		,ui_data.itemname
		,ui_data.itemlabel
		,ui_data.fillup_amount
		,ui_data.element_id
		,ui_data.amount
		,0
		,true
	)
	ui_cb({})
end)


RegisterNUICallback('LevelupWarehouse', function(data, cb)
	local amount_to_pay = tonumber(data.amounttopay)
	local gas_station_id = data.gas_station_id
	local new_level = data.new_level

	TriggerServerEvent(
		'myFuel:LevelupWarehouse'
		,amount_to_pay
		,gas_station_id
		,new_level
	)
	cb({})
end)

RegisterNUICallback('SaveFuelPrice', function(data, cb)
	local fuel_type = data.fuel_type
	local gas_station_id = data.gas_station_id
	local new_price = data.new_price

	TriggerServerEvent(
		'myFuel:SaveFuelPrice'
		,new_price
		,gas_station_id
		,fuel_type
	)
	cb({})
end)

-- MISSIONS

local tankerBlip
local tankerCoords
local spawnTruckLocation
local missionData 
local isInMission = false
local isNearMissionEnd = false
local missionTruck 
local missionTanker

Citizen.CreateThread(function()
	-- checkTankerExist(GetEntityCoords(PlayerPedId()), 25.0)

	while true do
		sleep = 1000
		if isInMission then
			sleep = 350
			isNearMissionEnd = false

			local ped = PlayerPedId()
			local pos = GetEntityCoords(ped)

			if tankerCoords ~= nil and tankerBlip ~= nil then
				local distance = #(pos - vector3(tankerCoords[1], tankerCoords[2], tankerCoords[3]))
				if distance <= 10.0 then
					RemoveBlip(tankerBlip)
					tankerBlip = nil
					TriggerEvent('myFuel:picturenotify', Config.NotificationPicturePay, Translations[Config.Locale].mission_start, Translations[Config.Locale].mission_murrieta,  Translations[Config.Locale].mission_subtitle)
					SetNewWaypoint(spawnTruckLocation.x, spawnTruckLocation.y)
				end
			end

			if spawnTruckLocation ~= nil then
				-- 2nd aprt mission
				local distance = #(pos - vector3(spawnTruckLocation.x, spawnTruckLocation.y, spawnTruckLocation.z))
				if distance <= 4.0 then
					isNearMissionEnd = true
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function()
	while true do
		sleep = 1000
		if isInMission then
			sleep = 1
			if spawnTruckLocation ~= nil then
				DrawMarker(27, spawnTruckLocation.x , spawnTruckLocation.y, spawnTruckLocation.z - 0.98, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.Marker.radius*1.5, Config.Marker.radius*1.5, Config.Marker.radius, Config.Marker.colour.r, Config.Marker.colour.g, Config.Marker.colour.b, Config.Marker.colour.a, false, false, 2, false, false, false, false)
				if isNearMissionEnd and tankerBlip == nil then
					ESX.ShowHelpNotification(Translations[Config.Locale].mission_info_attach)
					if IsControlJustReleased(0, 38) then
						local tankerExist = checkTankerExist(GetEntityCoords(PlayerPedId()), 10.0)
						if tankerExist then
							ESX.Game.DeleteVehicle(GetVehiclePedIsIn(PlayerPedId()))
							TriggerEvent('myFuel:picturenotify', Config.NotificationPicturePay, Translations[Config.Locale].notification_mission_complete .. UI_Translations[Config.Locale][missionData.type] .. Translations[Config.Locale].notification_mission_complete2, Translations[Config.Locale].mission_murrieta, Translations[Config.Locale].mission_subtitle)
							TriggerServerEvent('myFuel:SetStockToMax',missionData.id, missionData.type, missionData.to_set)
							if Config.MissionPricePerLiter ~= nil and Config.MissionPricePerLiter ~= 0.0 and Config.MissionPricePerLiter ~= 0 then
								TriggerServerEvent('myFuel:payForMission', missionData.to_set)
								TriggerEvent("myFuel:notify", Translations[Config.Locale].paid_for_mission .. math.floor(Config.MissionPricePerLiter * missionData.to_set))
							end
							isInMission = false
						else
							TriggerEvent("myFuel:notify", Translations[Config.Locale].notification_mission_no_tanker)
						end
					end
				elseif isNearMissionEnd then
					ESX.ShowHelpNotification(Translations[Config.Locale].mission_info_end)
					if IsControlJustReleased(0, 38) then
						if tankerBlip ~= nil then
							RemoveBlip(tankerBlip)
						end

						if DoesEntityExist(missionTruck) then
							ESX.Game.DeleteVehicle(missionTruck)
						end

						if DoesEntityExist(missionTanker) then
							ESX.Game.DeleteVehicle(missionTanker)
						end
						isInMission = false
					end
					
				end
			end
			
		end
		Citizen.Wait(sleep)
	end
end)

RegisterNUICallback('StartMission', function(data, cb)
	local gas_station_id = data.gas_station_id
	local fuel_type = data.fuel_type
	local stock_to_set = data.stock_to_set

	missionData = {
		id = gas_station_id,
		type = fuel_type,
		to_set = stock_to_set
	}

	closeUI();
	if DoesEntityExist(missionTruck) then
		TriggerEvent("myFuel:notify", Translations[Config.Locale].mission_already_started)
	else

		for i, gas_station in pairs(DefinedGasStations) do
			if gas_station.db_id == gas_station_id then
				spawnTruckLocation = gas_station.missionpos
				break
			end
		end
		if GetClosestVehicle(spawnTruckLocation, 4.5) == nil then
			local location = vector3(spawnTruckLocation.x, spawnTruckLocation.y, spawnTruckLocation.z)
			isInMission = true
		
			ESX.Game.SpawnVehicle(GetHashKey('hauler'), location, spawnTruckLocation.heading, function(callback_vehicle)
				missionTruck = callback_vehicle
				SetFuel(callback_vehicle, 100.0)
			end)
			spawnRandomTanker()
			TriggerEvent('myFuel:picturenotify', Config.NotificationPicturePay, Translations[Config.Locale].mission_begin, Translations[Config.Locale].mission_murrieta, Translations[Config.Locale].mission_subtitle)
		else
			TriggerEvent("myFuel:notify", Translations[Config.Locale].mission_blocked)
		end
	end

end)

function spawnRandomTanker()

	local randomInt = math.random(1, #Config.MissionLocations)
	local trailerPos = searchBestParkingSpot(Config.MissionLocations[randomInt], Config.MissionLocations)
	tankerCoords = trailerPos

	tankerBlip = AddBlipForCoord(trailerPos[1], trailerPos[2])
        
	SetBlipSprite (tankerBlip, 479)
	SetBlipColour (tankerBlip, 0)
	SetBlipDisplay(tankerBlip, 2)
	SetBlipScale  (tankerBlip, 1.2)

	SetBlipAsShortRange(tankerBlip, false)
	SetBlipRoute(tankerBlip,  true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(Translations[Config.Locale]['tanker'])
	EndTextCommandSetBlipName(tankerBlip)

	Citizen.CreateThread(function()
		while true do

			local dist = #(GetEntityCoords(PlayerPedId()) - vector3(tankerCoords.x or tankerCoords[1], tankerCoords.y or tankerCoords[2], tankerCoords.z or tankerCoords[3]))
			if dist < 55.0 then
				ESX.Game.SpawnVehicle(GetHashKey('tanker'), {x = trailerPos[1],y = trailerPos[2], z = trailerPos[3]}, trailerPos[4], function(callback_vehicle)
					missionTanker = callback_vehicle
				end)
				break
			end

			Citizen.Wait(1000)
		end
	
	end)

end

function searchBestParkingSpot(spawnCoords, alternativeSpawnCoords)
    local finalSpawnCoords = spawnCoords
    if alternativeSpawnCoords ~= nil and #alternativeSpawnCoords > 0 then
        if GetClosestVehicle(spawnCoords, 3.0) ~= nil then
            for k, altPos in pairs(alternativeSpawnCoords) do
                local vehicleOnPos = GetClosestVehicle(altPos, 3.0)
                if vehicleOnPos == nil then
                    finalSpawnCoords = altPos
                    break
                end
            end
        end
    end

    return finalSpawnCoords
end

-- Return closest loaded vehicle entity or nil if no vehicle is found
function GetClosestVehicle(position, maxRadius)
    local vehicles       = GetGamePool("CVehicle")
    local dist           = maxRadius
    local closestVehicle = nil
    
    for i=1, #vehicles, 1 do
        local vehicleCoords = GetEntityCoords(vehicles[i])
        local tempDist = #(vector3(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z) - vector3(position.x or position[1], position.y or position[2], position.z or position[3]))
        if (tempDist < dist) then
            dist = tempDist
            closestVehicle = vehicles[i]
        end
    end
    
    if (closestVehicle ~= nil and DoesEntityExist(closestVehicle)) then
        return closestVehicle
    else
        return nil
    end
end

function checkTankerExist(position, maxRadius)
    local vehicles       = GetGamePool("CVehicle")
    local dist           = maxRadius
    local exist = false
    
    for i=1, #vehicles, 1 do
        local vehicleCoords = GetEntityCoords(vehicles[i])
        local tempDist = #(vector3(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z) - vector3(position.x, position.y, position.z))
		
        if (tempDist < dist) and GetEntityModel(vehicles[i]) == GetHashKey('tanker') then
            exist = true
			break
        end
    end
    
    return exist
end

-- MISSIONS END

RegisterNUICallback('MoneyTransfer', function(data, cb)
	local gas_station_id = data.gas_station_id
	local money_amount = tonumber(data.money_amount)
	local tranfer_type = data.tranfer_type

	TriggerServerEvent(
		'myFuel:TransferMoney'
		,gas_station_id
		,money_amount
		,tranfer_type
	)
	cb({})
end)

RegisterNUICallback('BuyFuel', function(data, cb)
	local fuel_type = data.fuel_type
	local gas_station_id = data.gas_station_id
	local fuel_price = tonumber(data.fuel_price)
	local fuel_amount = tonumber(data.fuel_amount)
	local fuel_singleprice = tonumber(data.fuel_singleprice)

	TriggerServerEvent(
		'myFuel:BuyFuel'
		,gas_station_id
		,fuel_type
		,fuel_price
		,fuel_amount
		,fuel_singleprice
	)
	cb({})
end)

RegisterNUICallback('fillUpVehicle', function(data, cb)
	UIIsOpen = false
	SetNuiFocus(false, false)
	SendNUIMessage({ message = "hide_fillup_menu"})
	removeAnimation()

	local vehicle = GetPlayersLastVehicle()
    local new_fuel_percentage = tonumber(data.new_fuel_percentage)
    local amounttopay = tonumber(data.amounttopay)
    local liters_filled_up = tonumber(data.liters_filled_up)
    local fuel_type = data.fuel_type
    local single_price = tonumber(data.single_price)
    local payment_method = data.payment_method
	
	returnNozzleToFuelpump(globalNozzleObject, globalRopeObject, false)

	if DoesEntityExist(vehicle) and #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(vehicle)) < 5 then
		TriggerServerEvent(
			'myFuel:pay'
			,new_fuel_percentage
			,VehToNet(vehicle)
			,amounttopay
			,pumpLocation
			,fuel_type
			,liters_filled_up
			,single_price
			,payment_method
			,data.isSociety
			,data.SocietyName
		)
	end
	cb({})
end)

RegisterNUICallback('close', function(data, cb)
	closeUI()

	if globalNozzleObject ~= nil and globalRopeObject ~= nil then 
		returnNozzleToFuelpump(globalNozzleObject, globalRopeObject, false)
	end 
	cb({})

end)


RegisterNUICallback('startAnimation',function(data,cb)
	CharIsBusy = true
	local ped = PlayerPedId()
	local vehicle = GetPlayersLastVehicle()
	TaskTurnPedToFaceEntity(ped,vehicle,5000)
	LoadAnimDict("timetable@gardener@filling_can")
	TaskPlayAnim(ped,"timetable@gardener@filling_can","gar_ig_5_filling_can",2.0,8.0,-1,50,0,0,0,0)
	cb({})
end)


--functions 

function grabNozzleFromFuelPump(fuelPumpObject)
	local fuelPumpCoords = GetEntityCoords(fuelPumpObject)
	local ped = PlayerPedId()

    LoadAnimDict("anim@am_hold_up@male")
    TaskPlayAnim(ped, "anim@am_hold_up@male", "shoplift_high", 2.0, 8.0, -1, 50, 0, 0, 0, 0)

    Wait(300)
    local nozzle = CreateObject('prop_cs_fuel_nozle', 0, 0, 0, true, true, true)
    AttachEntityToEntity(nozzle, ped, GetPedBoneIndex(ped, 0x49D9), 0.11, 0.02, 0.02, -80.0, -90.0, 15.0, true, true, false, true, 1, true)
    RopeLoadTextures()
    while not RopeAreTexturesLoaded() do
        Wait(0)
    end
    RopeLoadTextures()
    while not fuelPumpCoords do
        Wait(0)
    end
    local rope = AddRope(fuelPumpCoords.x, fuelPumpCoords.y, fuelPumpCoords.z, 0.0, 0.0, 0.0, 3.0, 1, 1000.0, 0.0, 1.0, false, false, false, 1.0, true)
    while not rope do
        Wait(0)
    end
    ActivatePhysics(rope)
    Wait(50)
    local nozzlePos = GetEntityCoords(nozzle)
    nozzlePos = GetOffsetFromEntityInWorldCoords(nozzle, 0.0, -0.033, -0.195)
    AttachEntitiesToRope(rope, fuelPumpObject, nozzle, fuelPumpCoords.x, fuelPumpCoords.y, fuelPumpCoords.z + 1.45, nozzlePos.x, nozzlePos.y, nozzlePos.z, 5.0, false, false, nil, nil)


	return rope, nozzle, true
    
end 

function getCurrentPrices(gas_station_id)
	ESX.TriggerServerCallback('myFuel:getCurrentPrices', function(data)
		GasStationPrices = data
	end, gas_station_id)
end 

function openUI(gas_station_id, isPetrolCan, currentLiters, maxLiters, fuel_type, is_society_veh, society_name)
	ESX.TriggerServerCallback('myFuel:GetNecessaryFillupData', function(data)
		UIIsOpen = true
		SetNuiFocus(true, true)
		SendNUIMessage({ message = "show_fillup_menu",locale = Config.Locale, petrolCan = isPetrolCan , currentLiter = currentLiters , maxCapacity = maxLiters , data = data, fuel_tick_interval = Config.FuelRefillInterval, is_society_veh = is_society_veh, society_name = society_name })
		
	end, gas_station_id, fuel_type)
end 

function close()
	SetNuiFocus(false, false)
	SendNUIMessage({ action = false })
end

function open(vehicle,data)
	SetNuiFocus(true, true)
	SendNUIMessage({ action = true, fuel = GetVehicleFuelLevel(vehicle), data = data })
end


function OpenGasStationAdminPanel(gas_station_id)
	ESX.TriggerServerCallback('myFuel:GetOwnerInfo', function(returndata)

		UIIsOpen = true
		SetNuiFocus(true, true)
		SendNUIMessage({ message = "show_owner_menu",locale = Config.Locale, gas_station_id = gas_station_id , data = returndata })
	end, gas_station_id)
end 

function removeAnimation()
	CharIsBusy = false
	local ped = PlayerPedId()
	ClearPedTasks(ped)
	RemoveAnimDict("timetable@gardener@filling_can")
end 

function closeUI()
	UIIsOpen = false
	SetNuiFocus(false, false)
	SendNUIMessage({ message = "close"})
	removeAnimation()
end 


function removeAllBlips()
	for key, blip in pairs(BlipData) do
		RemoveBlip(blip)
	end
	BlipData={}
end 

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
	  return
	end

	for key, value in pairs(createdExtraPumps) do
		DeleteObject(value)
	end 
	
	
	if globalNozzleObject ~= nil and globalRopeObject ~= nil then 
		returnNozzleToFuelpump(globalNozzleObject, globalRopeObject, false)
	end 

	FreezeEntityPosition(PlayerPedId(), false)	
	ClearPedTasks(PlayerPedId())

	
	removeAllBlips()
	
	
  end)