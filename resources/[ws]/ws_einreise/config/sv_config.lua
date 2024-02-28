WS_S = {}

WS_S.banTime = 2 -- in hours

WS_S.adminRanks = {
    ["superadmin"] = true,
    ["admin"] = true,
    ["guide"] = true,
	["inhaber"] = true
}

WS_S.action = {
    ShowIdentity = function(playerId)
        -- TriggerClientEvent("ws_identity:showRegister", playerId)
		TriggerClientEvent("esx_identity:showRegisterIdentity", playerId)
    end,
    ShowSkinMenu = function(playerId)
        TriggerClientEvent('esx_skin:openSaveableMenu', playerId)
    end,
    BanPlayer = function(playerId, reason)
        -- TriggerEvent("EasyAdmin:BanPlayer", playerId, reason, (WS_S.banTime * 60 * 60 * 1000))
    end
}

WS_S.protect = {
    enabled = true,
    -- ONLY ONE OF THE FOLLOWING TWO OPTIONS CAN BE TRUE
    -- removeAll removes all entitys that are spawned by the player while in airport
    -- useMax removes the oldest entitys if the player spawns more than max entitys
    mode = { removeAll = true, useMax = false },
    max = 5, -- max entitys per player, only used if mode.useMax = true
    -- checks the airport area for entitys and removes them
    -- this disables the other two options above
    checkArea = { 
        enabled = true,
        coords = WS.positions["airport_middle"], -- vector3(0, 0, 0)
        radius = 100
    }
}

WS_S.teamReward = {
    enabled = true,
    actions = {
        ["whitelist"] = { 
            reward = true,
            type = "money", -- "money", "bank", "black_money" 
            amount = 1000
        },
        ["ban"] = { 
            reward = false,
            type = "money", -- "money", "bank", "black_money" 
            amount = 1000
        },
        ["kick"] = { 
            reward = false,
            type = "money", -- "money", "bank", "black_money" 
            amount = 1000
        },
        -- valid actions: "whitelist", "ban", "kick", "skin", "char", "dimension"
    }
}

WS_S.discord = {
    enabled = true,
    servername = "web.services.io",
    url = "https://web-services.io/",
    icon = "https://tobias.isfucking.pro/4zzE5A.png",
    color = "3447003",
    username = "WS - EINREISE",
    webhook = "YOUR-DISCORD-WEBHOOK"
}