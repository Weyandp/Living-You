WS_S = {}

WS_S.settings = {
    impoundPrice = 750, -- will check cash and bank
    deleteOldVehOnImpoundParkOut = true, -- should the old vehicle be despawn (recommend to be true)
    storeAllVehiclesOnStart = true,
    civJobName = "" -- leave empty to load all vehicles
}

WS_S.discord = { -- used for car name changes and detect logs
    enabled = true,
    servername = "web.services.io",
    url = "https://web-services.io/",
    icon = "https://tobias.isfucking.pro/4zzE5A.png",
    color = "3447003",
    username = "LR - GARAGE",
    webhook = "YOUR-DISCORD-WEBHOO"
}

WS_S.blacklistedStrings = {
    enabled = true,
    list = { "<", ">" },
    onDetect = function(playerId)
        DropPlayer(playerId, "WS_GARAGE: Blacklisted String Detected")
    end
}

WS_S.exploitCheck = {
    enabled = true, 
    onDetect = function(playerId, info)
        DropPlayer(playerId, ("WS_GARAGE: Exploit Detected [%s]"):format(info))
    end
}
