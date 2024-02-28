--[[
	Author: Zuck3rFr3i
]]

local open = 0
ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Wait(0)
    end

    ESX.PlayerData = ESX.GetPlayerData()
end)

local function handlefrstate(state, focus)
    uistate = state
    uifocus = focus
    SendNUIMessage({
        type = "report",
        enable = uistate,
    })
    SetNuiFocus(uifocus, uifocus)
end

--[[
    NUI Callbacks
]]
RegisterNUICallback('sendreport', function(data, cb)
    if data.state == "send" then
        handlefrstate(0, false)
        open = 0
        local titel = data.titlestr
        local desciption = data.description
        local pname = GetPlayerName(PlayerId())
        

        if titel ~= "" then
            if desciption ~= "" then
                TriggerServerEvent("report:sendreport", titel, desciption, pname)
                ESX.ShowNotification("Vielen dank, wir haben deine Nachricht erhalten!", "info", 3000)
            else
                ESX.ShowNotification("Leere Meldungen benötigen wir nicht!", "info", 3000)
            end
        else
            ESX.ShowNotification("Bitte gebe einen Titel an!", "info", 3000)
        end
    end
end)

RegisterNUICallback('closeui', function(data, cb)
    if data.state == "close" then
        handlefrstate(0, false)
        open = 0
    end
end)

--[[
    Command Handler
]]
RegisterCommand("report", function()
    if open == 0 then
        handlefrstate(1, true)
        open = 1
    else
        handlefrstate(0, true)
        open = 0
    end
end, false)