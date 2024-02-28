WS = {}

WS.esx = {
    prefix = "esx",
    sharedObject = {
        event = "esx:getSharedObject",
        export = { 
            use = true,
            get = function()
                return exports["es_extended"]:getSharedObject()
            end
        }
    }
}

WS.jobs = {
    -- if useList is false, all jobs will be tracked (except unemployed)
    useList = false, 
    list = {
        "police",
        "ambulance",
        "mechanic"
    }
}

WS.settings = {
    item = "gps",
    tick = 2, -- in secs
    blip = {
        sprite = 1,
        display = 4,
        scale = 0.8,
        color = 4,
        shortRange = true,
        name = "GPS - %s" -- %s = job label
    }
}