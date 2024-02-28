ESX = exports['es_extended']:getSharedObject()


Config = {}

Config.useESX = true -- Set this to true if you are using es_extended
Config.useQB = false -- Set this to true if you are using qbcore

if Config.useESX then
    ESX = exports['es_extended']:getSharedObject()
    
    -- Run the code below if ESX nil is displayed in your console and delete the code above--.

    -- ESX = nil
    -- TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


elseif Config.useQB then
    Config.NewQBVersion = true

    if Config.NewQBVersion then
        QBCore = exports['qb-core']:GetCoreObject()
    else
        TriggerEvent("QBCore:GetObject", function(obj)
            QBCore = obj
        end)
    end
end

Config.Jobs = {
    "police",
    "ambulance",
    "Polizei"
}

Config.BlipTime =  60    -- in seconds

Config.Blipname = "Panicbutton" -- Blip name

Config.ShowNotification = true
Config.NotificationTitle = '10-99'
Config.NotificationText = ' Officer Triggered a Panic'
Config.NotificationTime = 30     -- in seconds

Config.RoadPhone = true -- Set this to true to get a dispatch on your roadphone! 
Config.RoadPhoneMessage = 'Der Beamte hat Panik ausgelöst!'

Config.EnableCommand = true -- Set this to false if you want to disable the command
Config.Command = 'panic' -- Set this to the command you want to use to trigger the panic


function notification(msg)
    local mugshot, mugshotStr = ESX.Game.GetPedMugshot(PlayerPedId())
    ESX.ShowAdvancedNotification('' .. Config.NotificationTitle .. '', '', msg, mugshotStr, 1)
    UnregisterPedheadshot(mugshot)
end

function ShowNotification(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, true)
end

Config.Locales = {
    needhelp = "braucht sofortige Hilfe! Markierungssatz.",
    permissionneed = "Sie sind nicht befugt, die Panik auszulösen"
}