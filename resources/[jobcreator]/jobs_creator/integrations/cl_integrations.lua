EXTERNAL_EVENTS_NAMES = {
    ["esx:getSharedObject"] = nil, -- This is nil because it will be found automatically, change it to your one ONLY in the case it can't be found
    
    ["esx_skin:save"] = "esx_skin:save",

    ["esx_billing:sendBill"] = "esx_billing:sendBill",

    ["jsfour-idcard:open"] = "jsfour-idcard:open",

    ["esx_license:removeLicense"] = "esx_license:removeLicense",
    ["esx_license:addLicense"] = "esx_license:addLicense",

    ["esx_skin:getPlayerSkin"] = "esx_skin:getPlayerSkin",

    -- Just used if you choose illenium instead of framework "outfit manager"
    ["illenium-appearance:client:openOutfitMenu"] = "illenium-appearance:client:openOutfitMenu",
    ["illenium-apearance:client:outfitsCommand"] = "illenium-apearance:client:outfitsCommand",
}

-- If true, the markers will be hidden when the player is not on duty, if false, they will be visible but it can't be used
COMPLETELY_HIDE_MARKERS_WHEN_OFF_DUTY = false

--[[
    Default progressbar color (must be a hex code). Examples:
    "#0fffef" - Light blue
    "#ff0f0f" - Red
    "#0f0fff" - Blue
]]
DEFAULT_PROGRESSBAR_COLOR = "#0fffef"

-- If the inventory is not the default one, this will disable default Stash, Safe and Armory
-- DO NOT EDIT
-- DO NOT EDIT
Citizen.CreateThread(function()
    if(INVENTORY_TO_USE ~= "default") then
        RegisterNetEvent(Utils.eventsPrefix .. ":framework:ready", function() 
            exports[Utils.eventsPrefix]:disableScriptEvent(Utils.eventsPrefix .. ":stash:openStash")
            exports[Utils.eventsPrefix]:disableScriptEvent(Utils.eventsPrefix .. ":armory:openArmory")
            exports[Utils.eventsPrefix]:disableScriptEvent(Utils.eventsPrefix .. ":safe:openSafe")
        end)
    end
end)

local function myCustomHelpNotification(message)
    -- Customize your function to fit your needs
    -- print(message)

    TriggerEvent('cs_hud:HelpUI', 'E', message)

end

RegisterNetEvent("jobs_creator:framework:ready", function() 
    -- This will replace the base function with the one you want
    exports["jobs_creator"]:replaceShowHelpNotification(myCustomHelpNotification)
end)

RegisterNetEvent("jobs_creator:framework:ready", function() 
    exports["jobs_creator"]:disableScriptEvent("jobs_creator:internalProgressBar")
end)

RegisterNetEvent("jobs_creator:internalProgressBar", function(time, text)
    -- exports["c_progressbar"]:StartProgressBar(text, time)
    TriggerEvent('cs_hud:Progressbar', text, time)
end)

AddEventHandler("jobs_creator:temporary_garage:vehicleSpawned", function(vehicle, vehicleName, vehiclePlate)
    TriggerServerEvent('esx_carlock:addJobVehicle', vehiclePlate)
end)

AddEventHandler("jobs_creator:temporary_garage:vehicleParked", function(vehicleModel, vehiclePlate)
    TriggerServerEvent('esx_carlock:removeJobVehicle', vehiclePlate)
end)