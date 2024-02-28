--[[
    If you have a different script name for the following ones, change it to your one
    Example:

    EXTERNAL_SCRIPTS_NAMES = {
        ["qb-core"] = "mygamemode_core",
        ["es_extended"] = "custom_extended",
    }
]]

EXTERNAL_SCRIPTS_NAMES = {
    ["qb-core"] = "qb-core",
    ["es_extended"] = "es_extended",
    
    -- If you don't use these inventories, don't touch
    ["ox_inventory"] = "ox_inventory",
    ["qs-inventory"] = "qs-inventory",

    -- lockpick minigame, credits: https://github.com/baguscodestudio/lockpick
    ["lockpick"] = "lockpick",

    ["shops_creator"] = "shops_creator"
}

--[[
    Available options: default, qs-inventory, ox-inventory      (they MUST be between double quotes "")
]]
INVENTORY_TO_USE = "default"

--[[
    The shared object of the framework will refresh each X seconds. If for any reason you don't want it to refresh, set to nil
]] 
SECONDS_TO_REFRESH_SHARED_OBJECT = nil