Config = {}

Config.Framework = "ESX"    -- ESX, QBCORE, CUSTOM or STANDALONE CUSTOM can be configured in [cl_ & sv_integrations.lua]
Config.UseEsxExport = false -- Do you use ESX version 1.8.5 or higher?

Config.Locale = "de"    -- de, en or create you own language in locales.lua

Config.Prop = "prop_cs_tablet"
Config.Animation = {
    dict = "amb@world_human_tourist_map@male@base",
    anim = "base"
}

Config.ServerPraefix = "Living-You" -- Has to be unique for every server for saving the credentials in the cache
Config.AutoFill = { -- Configure the autofill behaviour for the pad login
    AutoFillPW = true,    -- Saves the users username & password on first login and autofills it on every login
    AutoLogin = true,     -- Automaticly login the user with the autofilled credentials if he open the pad
    AutoFillLogout = true   -- Autofill the password after the user manually logs out
}


function ShouldPadBeLocked()  -- Here you can add some checks that prevent the pad from open, such as exports from you cuff script

    return false;
end

Config.LockPadWhileDead = false -- Should the Pad be locked while the player is dead? if ture you need the corect revivetrigger in Config.PlayerReviveEvent
Config.PlayerDeadEvent = "esx:onPlayerDeath" -- Client Event if the player dies
Config.PlayerReviveEvent = "esx_ambulancejob:revive"   -- Client Event if the player is revived
Config.PlayerSpawnedEvent = "playerSpawned"  -- Client event if the player has spawnd/loaded (playerSpawned works for 99% of FIveM servers)

-- Only with Framework
Config.EnableJobLock = false -- You want the Pad to be locked only for specific jobs (only with framework)
Config.WhitelistedJobs = {"police", "ambulance", "fib", "justiz"} -- Only there Jobs can acces the Pad

----------------------
Config.UseKeyMapping = true -- If false you have to use the Item, use the Trigger or use Poitions/Props
Config.DefaultKeybind = "M" -- The key to open the pad
Config.KeyBindText = "Open EmergencyOS Tablet" -- Description for the keymapping in settings
Config.NeedItem = false  -- Does the player need an specific Item to open the pad?
Config.PadItems = {"tablet", "othertablet"} -- Table of items tha tcan open the tablet

-- If you use QBCORE you have to Configure Config.UseCustomInventorySystem
Config.UseCustomInventorySystem = false -- If you use an other Inevntory than the default ESX you may have to enable this and configure FrameworkDoesPlayerHaveItem() in cl_integrations.lua



Config.UsePadOnFoot = true -- Can a player access the while on foot?
Config.OnFootFullscreen = false  -- Should the pad be fullscreen when opend on foot?

Config.UsePadInCar = true -- Can a player access the while in a car?
Config.PadInCarFullscreen = true -- Should the pad be fullscreen when opend in a car?

---------------
-- Config for Props & Poitions

Config.OpenKey = "E"
Config.PlayerJobChange = "esx:setJob" -- The Event that gets triggered if the players jobs changes so it fetches it again

-- Here you can integrate you custom Helpnotify such as okoktextUi
-- If you dont use ESX you have to configure EMOSHelpNotify() & HelpNotifyClose() in cl_integrations.lua
Config.UseCustomHelpNotify = false
Config.CallHelpEveryFrame = false -- If true EMOSHelpNotify() will be called every frame, if not then only one time if player enters the marker


Config.EnablePositions = false
Config.OpenDistance = 2.0
Config.MarkerDrawDistance = 15.0

Config.Positions = {
    ['poition01'] = {
        position = vector3(-74.2704, -818.8802, 326.1751),    -- Position to open the pad
        jobs = {"police", "ambulance"}, -- Only used if you use a Framework / The jobs have also to be in Config.WhitelistedJobs
        helpnotify = true,  -- You want a helpnotify to be shown
        fullscreen = true,  -- You want the pad to be fullscreen
        marker = {  -- Here you can configure the apperance of the marker shown on the position
            enabled = true,
            type = 21, -- https://docs.fivem.net/docs/game-references/markers/
            moveUpDown = false,
            rotate = false,
            color = {
                r = 144,
                g = 22,
                b = 216,
                t = 140
            },
            size = {
                x = 1.0,
                y = 1.0,
                z = 1.0
            }
        }
    },

    ['poition02'] = {
        position = vector3(-77.4944, -819.9666, 326.1756),    -- Position to open the pad
        jobs = {"police", "ambulance"}, -- Only used if you use a Framework / The jobs have also to be in Config.WhitelistedJobs
        helpnotify = true,  -- You want a helpnotify to be shown
        fullscreen = true,  -- You want the pad to be fullscreen
        marker = {  -- Here you can configure the apperance of the marker shown on the position
            enabled = true,
            type = 21, -- https://docs.fivem.net/docs/game-references/markers/
            moveUpDown = false,
            rotate = false,
            color = {
                r = 144,
                g = 22,
                b = 216,
                t = 140
            },
            size = {
                x = 1.0,
                y = 1.0,
                z = 1.0
            }
        }
    }
}

-- Here you can configure some props, if you are nearby them you can open the pad
Config.EnableProps = false
Config.PropOpenDistance = 2.0 
Config.Props = {
    ['prop_park_ticket_01'] = {
        jobs = {"police"},
        helpnotify = true,
        fullscreen = true
    }
}





---------------------------
function EMOSClientNotify(title, text) -- Your client notify trigger
    
end