-- CreateThread(function()
--     while true do
--         Wait(2500)
--         local players = GetNumPlayerIndices()
--         if players > 0 then
--             TriggerClientEvent('ct_hud:UpdatePlayers', -1, players)
--         end
--     end
-- end)

RegisterCommand('tc', function(s, args)
    local xPlayer = ESX.GetPlayerFromId(s)
    if xPlayer and Teamchat[xPlayer.getGroup()] then
        local msg = table.concat(args, " ")
        local name = GetPlayerName(s)
        for _, xTarget in pairs(ESX.GetExtendedPlayers()) do
            if Teamchat[xTarget.getGroup()] then
                TriggerClientEvent('cs_hud:TCNotify', xTarget.source, msg, name)
            end
        end
    end
end)

RegisterCommand('announce', function(s, args)
    local xPlayer = ESX.GetPlayerFromId(s)
    if xPlayer and Announce[xPlayer.getGroup()] then
        local msg = table.concat(args, " ")
        TriggerClientEvent('cs_hud:Announce', -1, msg)
    end
end)

RegisterCommand('ooc', function(s, args)
    local msg = table.concat(args, " ")
    TriggerClientEvent('cs_hud:OOC', -1, GetEntityCoords(GetPlayerPed(s)), msg, GetPlayerName(s))
end)

RegisterCommand("", function(source, args)
    local argString = table.concat(args, " ")
    if argString ~= nil then
        TriggerClientEvent('cs_hud:Announce', -1, argString, 15000, "info")
    end
end, true)

AddEventHandler('txAdmin:events:announcement', function(eventData)
    TriggerClientEvent('cs_hud:Announce', -1, eventData.author .. ": " .. eventData.message, 15000, "info")
end)

AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    TriggerClientEvent('cs_hud:Announce', -1, eventData.translatedMessage, 15000, "info")
end)