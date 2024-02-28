ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local CurrentVehicle = nil
local PlayerIsDriver = false

Citizen.CreateThread(function()
	

	while true do
		Citizen.Wait(250)
		
		local playerPed = PlayerPedId()

		if PlayerIsDriver == false and IsPedInAnyVehicle(playerPed) then -- beim einsteigen

			CurrentVehicle = GetVehiclePedIsIn(playerPed,false)

			local VehicleDriver = GetPedInVehicleSeat(CurrentVehicle, -1)

			if VehicleDriver == playerPed and Config.NotSaveForVehicleClasses[GetVehicleClass(CurrentVehicle)] == nil then 
				PlayerIsDriver = true 
			else
				PlayerIsDriver = false
			end 
		elseif PlayerIsDriver == true and not IsPedInAnyVehicle(playerPed) then --beim aussteigen
			PlayerIsDriver = false
			CurrentVehicle = nil 
		end 
	end
end)



Citizen.CreateThread(function()
	local saveInterval = 1
	if Config.SaveInterval > 1 then
		saveInterval = Config.SaveInterval
	end

	while true do
	
		local playerPed = PlayerPedId()

		if PlayerIsDriver and CurrentVehicle ~= nil then 
			local lastPosition = GetEntityCoords(PlayerPedId())

			local NumberPlate = GetVehicleNumberPlateText(CurrentVehicle)
			GetEntityCoords(PlayerPedId())

			Citizen.Wait(saveInterval)

			local currentPosition = GetEntityCoords(PlayerPedId())

			local distance = 0
			if IsVehicleOnAllWheels(CurrentVehicle) then
				distance = GetDistanceBetweenCoords(lastPosition.x, lastPosition.y, lastPosition.z, currentPosition.x, currentPosition.y, currentPosition.z, true)
			end

			if distance > 0 then
				TriggerServerEvent('myCarMileage:addMileage', NumberPlate, distance/1000)
			end 
		end 
		Citizen.Wait(50)
	end 
end)

