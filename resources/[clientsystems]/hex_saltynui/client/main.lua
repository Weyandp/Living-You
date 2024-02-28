local isMuted = true

local function setMute(state)
    SendNUIMessage({
        action = 'muted',
        state = state
    })
    
    SetNuiFocus(state, state)
    isMuted = state
end

AddEventHandler('SaltyChat_PluginStateChanged', function(state)
    print(state)
    if state == 0 then
        setMute(true)
    elseif state == 1 then
        setMute(false)
    elseif state == 2 then
        setMute(false)
    end
end)

AddEventHandler('SaltyChat_SoundStateChanged', function(state)
    setMute(state)
end)

RegisterNUICallback('getState', function(data, cb)
    SetNuiFocus(isMuted, isMuted)

    cb({
        isMuted = isMuted
    })
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if isMuted then
            DisableAllControlActions(0)
            DisableAllControlActions(1)
            DisableAllControlActions(2)
        else
            Citizen.Wait(1000)
        end
    end
end)