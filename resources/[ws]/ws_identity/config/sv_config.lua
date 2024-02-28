WS_S = {}

WS_S.Discord = {
    ["username"] = "web.services.io",
    ["title"] = "WS - IDENTITY",
    ["color"] = '3447003',
    ["avatar_url"] = "https://tobias.isfucking.pro/4zzE5A.png",
    ["icon_url"] = "https://tobias.isfucking.pro/4zzE5A.png",
    ["webhook"] = "YOUR_DISCORD_WEBHOOK",
}

WS_S.Log = {
    ["register"] = true, -- LOG IF PLAYER REGISTERES
    ["commands"] = true, -- LOG ADMIN COMMANDS
}


WS_S.Commands = {
    ["resetchar"] = { -- ADMIN CHAR RESET
        name = "resetchar",
        enabled = true
    }, 
    ["delchar"] = { -- SELF
        name = "delchar",
        enabled = false
    }, 
}

WS_S.Admins = {
    "superadmin"
}