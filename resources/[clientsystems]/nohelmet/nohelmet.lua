local revel = 0
Citizen.CreateThread( function()
	while true do 
		revel = 1000
		if IsPedInAnyVehicle(PlayerPedId(), false) then 
			revel = 1
			SetPedConfigFlag(PlayerPedId(), 35, false)
		end
      Citizen.Wait(revel)
	end
  end)