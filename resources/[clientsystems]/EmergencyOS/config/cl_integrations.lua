-- If you use a custom Framework you can integrate it here | Dont forget to set Config.Framework = "CUSTOM" in the config.lua
-- Maybe you have to initiate your framework above here like "ESX = exports["es_extended"]:getSharedObject()"

function FrameworkGetPlayerJob() -- This should return the player job like "police" or "abulance" as a string


    return playerJobName
end

function FrameworkDoesPlayerHaveItem(item) -- Should return true if the player has the specified item


    return true
end

function EMOSHelpNotify() -- Here you can integrate you own helpnotify if you dont use ESX
    -- exports['okokTextUI']:Open("text", "blue", "left")
end

function HelpNotifyClose() -- This gets called after the player leaves the marker to close the HelpNotify if needed

    -- exports['okokTextUI']:Close()
end