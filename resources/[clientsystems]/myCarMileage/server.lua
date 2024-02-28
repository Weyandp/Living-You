ESX             = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('myCarMileage:addMileage')
AddEventHandler('myCarMileage:addMileage', function(plate, milage)
	--print('add mile for ' .. plate)
    MySQL.Async.execute("UPDATE owned_vehicles SET `milage` = milage + @milage WHERE `plate` = @plate", {['@plate'] = plate, ['@milage'] = milage})
end)


ESX.RegisterServerCallback('myCarMileage:getMileage', function(source, cb, plate)
	plate = plate:upper()
    local trimmedPlate = Trim(plate)
	
	--print('check for ' .. plate)
	local Query = "SELECT plate, milage from owned_vehicles where (plate = @plate OR plate = @trimmedPlate)"
	MySQL.Async.fetchAll(Query, {["@plate"] = plate, ["@trimmedPlate"] = trimmedPlate}, function(result)
		if result ~= nil then 
			if #result > 0 then 
				cb(result[1].milage, true)
			else
				cb(0, false)
			end 
		else 
			print("here is something wrong..")
		end 
	end)
end)

function Trim(text)
    return text:gsub("^%s*(.-)%s*$", "%1")
end