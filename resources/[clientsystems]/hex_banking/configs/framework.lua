Framework = {
    object = nil, -- leave it alone
    playerData = nil, -- leave it alone

    loadFunction = function()
        if Config.Framework == 'ESX' then
            Framework.object = exports['es_extended']:getSharedObject()

            if not IsDuplicityVersion() then
                while Framework.object.GetPlayerData().job == nil do
                    Citizen.Wait(50)
                end

                Framework.playerData = Framework.object.GetPlayerData()

                RegisterNetEvent('esx:setJob', function(job)
                    Framework.playerData.job = job
                end)
            end
        elseif Config.Framework == 'QB' then
            Framework.object = exports['qb-core']:GetCoreObject()

            if not IsDuplicityVersion() then
                while Framework.object.Functions.GetPlayerData().job == nil do
                    Citizen.Wait(50)
                end
    
                Framework.playerData = Framework.object.Functions.GetPlayerData()
    
                RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
                    Framework.playerData = val
                end)
            end
        end
    end,

    getIdentifier = function(playerId)
        if IsDuplicityVersion() then
            if Config.Framework == 'ESX' then
                local xPlayer = Framework.object.GetPlayerFromId(playerId)

                return xPlayer.identifier
            elseif Config.Framework == 'QB' then
                local Player = Framework.object.Functions.GetPlayer(playerId)

                return Player.PlayerData.citizenid
            end
        end
    end,

    getMoney = function(playerId, moneyType)
        if Config.Framework == 'ESX' then
            local xPlayer = Framework.object.GetPlayerFromId(playerId)
    

            if xPlayer.getAccount(moneyType) then
                return xPlayer.getAccount(moneyType).money
            else
                return 0
            end
        elseif Config.Framework == 'QB' then
            local Player = Framework.object.Functions.GetPlayer(playerId)

            if moneyType == 'money' then
                moneyType = 'cash'
            end

            return Player.Functions.GetMoney(moneyType)
        end

        return 0
    end,

    addMoney = function(playerId, moneyType, amount)
        if Config.Framework == 'ESX' then
            local xPlayer = Framework.object.GetPlayerFromId(playerId)

            if xPlayer.getAccount(moneyType) then
                xPlayer.addAccountMoney(moneyType, amount)
            end
        elseif Config.Framework == 'QB' then
            local Player = Framework.object.Functions.GetPlayer(playerId)

            if moneyType == 'money' then
                moneyType = 'cash'
            end

            Player.Functions.AddMoney(moneyType, amount)
        end
    end,

    removeMoney = function(playerId, moneyType, amount)
        if Config.Framework == 'ESX' then
            local xPlayer = Framework.object.GetPlayerFromId(playerId)
            
            if xPlayer.getAccount(moneyType) ~= nil then
                xPlayer.removeAccountMoney(moneyType, amount)
            end
        elseif Config.Framework == 'QB' then
            local Player = Framework.object.Functions.GetPlayer(playerId)
            
            if moneyType == 'money' then
                moneyType = 'cash'
            end

            if Player.Functions.GetMoney(moneyType) >= amount then
                Player.Functions.RemoveMoney(moneyType, amount)
            end
        end
    end,

    getName = function(playerId)
        if Config.Framework == 'ESX' then
            local xPlayer = Framework.object.GetPlayerFromId(playerId)

            return xPlayer.getName()
        elseif Config.Framework == 'QB' then
            local Player = Framework.object.Functions.GetPlayer(playerId)

            return Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname
        end
    end,

    triggerServerCallback = function(name, cb, ...)
        if not IsDuplicityVersion() then
            if Config.Framework == 'ESX' then
                Framework.object.TriggerServerCallback(name, function(...)
                    cb(...)
                end, ...)
            elseif Config.Framework == 'QB' then
                Framework.object.Functions.TriggerCallback(name, function(...)
                    cb(...)
                end, ...)
            end
        end
    end,

    registerServerCallback = function(name, cb)
        if IsDuplicityVersion() then
            if Config.Framework == 'ESX' then
                Framework.object.RegisterServerCallback(name, cb)
            elseif Config.Framework == 'QB' then
                Framework.object.Functions.CreateCallback(name, cb)
            end
        end
    end
}