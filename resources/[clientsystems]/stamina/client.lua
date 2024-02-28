Citizen.CreateThread(function()
    while true do
            local id = PlayerId()
            Citizen.Wait(1)
            RestorePlayerStamina(id, 1.0)
    end
end)