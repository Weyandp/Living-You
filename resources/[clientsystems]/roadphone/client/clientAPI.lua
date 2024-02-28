local isInFocus = false

function sendNotification(text)

    ESX.ShowNotification(text) -- You can edit this event to any Notification System you want

end

function blockPhone()

    return false -- return true if you want to block that anyone can open the phone

end

function GiveCarKeys(plate)

    -- TriggerEvent("vehiclekeys:client:SetOwner", plate)

end
CreateThread(function()
    while true do
        if getHandyActive() then
            if not getFlashLight() then
                DisableControlAction(0, 1, true)
                DisableControlAction(0, 2, true)
            end
            DisableControlAction(0, 304, true)
            DisableControlAction(0, 101, true)
            DisableControlAction(0, 74, true)
            DisableControlAction(0, 303, true)
            DisableControlAction(0, 311, true)
            DisableControlAction(0, 24, true)
            DisableControlAction(0, 25, true)
            DisableControlAction(0, 29, true)
            DisableControlAction(0, 322, true)
            DisableControlAction(0, 200, true)
            DisableControlAction(0, 202, true)
            DisableControlAction(0, 177, true)
            DisableControlAction(0, 37, true)
            DisableControlAction(0, 245, true)
            DisableControlAction(0, 263, true)
            DisableControlAction(0, 45, true)
            DisableControlAction(0, 80, true)
            DisableControlAction(0, 140, true)
            DisableControlAction(0, 0, true)
            DisableControlAction(0, 69, true)
            DisableControlAction(0, 70, true)
            DisableControlAction(0, 36, true)
            DisableControlAction(0, 326, true)
            DisableControlAction(0, 341, true)
            DisableControlAction(0, 343, true)
            DisableControlAction(0, 257, true)
            DisableControlAction(0, 22, true)
            DisableControlAction(0, 44, true)
            DisableControlAction(0, 288, true)
            DisableControlAction(0, 289, true)
            DisableControlAction(0, 170, true)
            DisableControlAction(0, 167, true)
            DisableControlAction(0, 26, true)
            DisableControlAction(0, 73, true)
            DisableControlAction(0, 199, true)
            DisableControlAction(0, 47, true)
            DisableControlAction(0, 264, true)
            DisableControlAction(0, 257, true)
            DisableControlAction(0, 140, true)
            DisableControlAction(0, 121, true)
            DisableControlAction(0, 114, true)
            DisableControlAction(0, 81, true)
            DisableControlAction(0, 82, true)
            DisableControlAction(0, 99, true)
            DisableControlAction(0, 330, true)
            DisableControlAction(0, 331, true)
            DisableControlAction(0, 100, true)
            DisableControlAction(0, 141, true)
            DisableControlAction(0, 142, true)
            DisableControlAction(0, 143, true)
            DisableControlAction(0, 106, true)
            DisableControlAction(0, 115, true)
            DisableControlAction(0, 91, true)
            DisableControlAction(0, 92, true)
            DisableControlAction(0, 245, true)
            DisableControlAction(0, 44, true)
            DisableControlAction(0, 157, true)
            DisableControlAction(0, 158, true)
            DisableControlAction(0, 160, true)
            DisableControlAction(0, 164, true)
            DisableControlAction(0, 165, true)
            DisableControlAction(0, 159, true)
            DisableControlAction(0, 161, true)
            DisableControlAction(0, 162, true)
            DisableControlAction(0, 163, true)
            DisableControlAction(0, 182, true)
        end
        Wait(0)
    end
end)

local IsDead = false

AddEventHandler(Config.ESXplayerDeathEvent, function(data)
    IsDead = true
end)

AddEventHandler(Config.ESXplayerSpawnEvent, function(spawn)
    IsDead = false
end)

if Config.ESXVersion == "1.1" then
    AddEventHandler("playerSpawned", function()
        IsDead = false
    end)
end

function checkPlayerDead()
    if Config.VisnAre then
        local dead = exports['visn_are']:GetHealthBuffer().unconscious

        return dead
    end

    return IsDead
end

CreateThread(function()
    while true do
        Wait(500)
        if NetworkIsPlayerActive(PlayerId()) then
            TriggerServerEvent('roadphone:playerLoad', GetPlayerServerId(PlayerId()))
            break
        end
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    Wait(5000)

    TriggerServerEvent('roadphone:playerLoad', GetPlayerServerId(PlayerId()))
end)

CreateThread(function()
    if Config.RemoveFromRadioWhenDead then
        while true do
            Wait(2000)
            if checkPlayerDead() and isInRadio() then
                TriggerEvent("roadphone:client:leaveradio")
            end
        end
    end
end)

RegisterNUICallback('inputfocus', function(data, cb) -- Do not change anything here!
    isInFocus = data.focus

    if isInFocus then
        SetNuiFocusKeepInput(false)
    else
        SetNuiFocusKeepInput(true)
    end

    cb('ok')
end)

function setRadioChannel(frequenz, playername)
    if Config.UseMumbleVoip then
        exports[Config.MumbleExport]:addPlayerToRadio(frequenz)
        exports[Config.MumbleExport]:SetMumbleProperty("radioEnabled", true)
    elseif Config.UseTokoVoip then
        local radiochannel = exports.tokovoip_script:getPlayerData(playername, "radio:channel")
        exports.tokovoip_script:removePlayerFromRadio(radiochannel)
        exports.tokovoip_script:setPlayerData(playername, "radio:channel", frequenz, true)
        exports.tokovoip_script:addPlayerToRadio(frequenz)
    elseif Config.UseSaltyChat then
        exports['saltychat']:SetRadioChannel(frequenz, true)
    elseif Config.UsePmaVoice then
        exports[Config.PMAVoiceExport]:addPlayerToRadio(frequenz)
        exports[Config.PMAVoiceExport]:setVoiceProperty('radioEnabled', true)
        exports[Config.PMAVoiceExport]:setVoiceProperty('micClicks', true)
    end

    TriggerEvent("roadphone:sendNotification", {
        apptitle = "APP_RADIO_NAME",
        title = _U('radiojoined', frequenz),
        message = nil,
        img = "/public/img/Apps/radio.png"
    })

    setInRadio(true)
end

AddEventHandler("roadphone:client:call:eventnumber", function(number)

    if tostring(number) == "77777" then -- CHECK WHICH NUMBER IS CALLED

        -- YOUR CODE

    end

end)

function ShowHelpNotification(msg, thisFrame, beep, duration)
    AddTextEntry('HelpNotification', msg)

    if thisFrame then
        DisplayHelpTextThisFrame('HelpNotification', false)
    else
        if beep == nil then
            beep = true
        end
        BeginTextCommandDisplayHelp('HelpNotification')
        EndTextCommandDisplayHelp(0, false, beep, duration or -1)
    end
end


function oxInventoryCheck() -- https://overextended.dev/ox_inventory/Functions/Client#search
    if (GetResourceState('ox_inventory') == 'started' or Config.oxInventory) and Config.NeedItem then
        for k, v in pairs(Config.Items) do
            local count = exports.ox_inventory:Search('count', v)
            if count and count >= 1 then
                return true, v
            end
        end
    else
        local phoneModel = "phone"
        return true, phoneModel
    end
    return false, nil
end

function testMail()
    local data = {
        sender = 'RoadShop',
        subject = "RoadShop TEST",
        message = "Mails from scripts come back even better than before now even with <span style='color: red'>Color</span> support. <br> <br> + Support for line breaks and button support ^^",
        button = {
            buttonEvent = "qb-drugs:client:setLocation",
            buttonData = "test",
            buttonname = "test"
          }
    }

    TriggerServerEvent("roadphone:receiveMail", data)
end
