WS = {}

WS.esx = {
    prefix = "esx", 
    sharedObject = {
        event = "esx:getSharedObject",
        export = { 
            use = false,
            get = function()
                return exports["es_extended"]:getSharedObject()
            end
        }
    }
}

WS.UI = {
    title = "SYSTEM",
    subTitle = "EINREISE",
    text = "Wähle einen Spieler aus, um ihn einreisen zu lassen."
}

WS.settings = {
    dimension = 2000,
    tpBackRange = 250,
    open = { command = "einreise", key = "F2", label = "Einreise Menü" },
    -- only one of the following two options can be true
    playerLoaded = { esx = true, inbuild = false, delay = 3000 },
    disable = { 
        weapons = true,
        firstSpawnTp = false, -- disable first spawn player tp (for some char creators)
        keys = true,
        -- https://docs.fivem.net/docs/game-references/controls/
        keyList = { 24, 257, 25, 263, 45, 39, 47, 66, 13, 98, 264, 257, 140, 141, 142, 143 }, 
    }
}

WS.duty = {
    enabled = true, -- duty master switch
    command = "einreiseamt",
    -- if you leave from duty, should you be tpt back to you original position? oldPos = true
    -- or should you be tpt to a custom position? oldPos = false & customPos = vector4(x, y, z, heading)
    onLeave = { oldPos = false, customPos = vector4(39.0691, -1023.0880, 29.5057, 22.3044) },
    godMode = true, -- if true, you will be invincible while on duty
    nameTags = true, -- if true, you will see name tags while on duty
    skin = {
        enabled = true,
        male = {
            ['arms'] = 4,
            ['tshirt_1'] = 32, ['tshirt_2'] = 0,
            ['torso_1'] = 31, ['torso_2'] = 0,
            ['decals_1'] = 0, ['decals_2'] = 0,
            ['pants_1'] = 28, ['pants_2'] = 0,
            ['shoes_1'] = 10, ['shoes_2'] = 0,
            ['helmet_1'] = -1, ['helmet_2'] = 0,
            ['mask_1'] = 0, ['mask_2'] = 0,
            ['chain_1'] = 0, ['chain_2'] = 0,
            ['ears_1'] = 0, ['ears_2'] = 0,
            ['bags_1'] = 0, ['bags_2'] = 0,
            ['hair_1'] = 0, ['hair_2'] = 0,
            ['bproof_1'] = 0, ['bproof_2'] = 0
        },
        female = {
            ['arms'] = 0,
            ['tshirt_1'] = 24, ['tshirt_2'] = 0,
            ['torso_1'] = 28, ['torso_2'] = 3,
            ['decals_1'] = 0, ['decals_2'] = 0,
            ['pants_1'] = 52, ['pants_2'] = 2,
            ['shoes_1'] = 0, ['shoes_2'] = 0,
            ['helmet_1'] = -1, ['helmet_2'] = 0,
            ['mask_1'] = 0, ['mask_2'] = 0,
            ['chain_1'] = 0, ['chain_2'] = 0,
            ['ears_1'] = 0, ['ears_2'] = 0,
            ['bags_1'] = 0, ['bags_2'] = 0,
            ['hair_1'] = 0, ['hair_2'] = 0,
            ['bproof_1'] = 0, ['bproof_2'] = 0
        }
    }
}

WS.marker = {
    typ = 21,
    move = false,
    rotate = true,
    drawDistance = 30,
    color = {
        r = 9,
        g = 164,
        b = 241,
        t = 140
    },
    size = {
        x = 1.0,
        y = 1.0,
        z = 1.0
    }
}

-- new players can notify the team that they are waiting for a whitelisting
WS.callTeam = {
    enabled = true,
    coords = vector3(-1085.7135, -2833.2366, 26.7087),
    cooldown = 30 -- in seconds
}

WS.positions = {
    ["admin_inside"] = vector4(-1084.0984, -2785.4666, 20.8417, 201.8822),
    ["airport_middle"] = vector3(-1081.7200, -2821.6394, 27.4656),
    ["airport_outside"] = vector4(-1037.9657, -2738.0217, 20.1693, 325.7212),
    ["airport_spawns"] = {
        vector4(-1140.4073, -2787.5847, 27.7088, 179.0439), -- spawn
    }
}

WS.language = {
    ["lang"] = "de",
    ["de"] = {
        helpNotify = "~INPUT_CONTEXT~ um zu interagieren",
        newPlayer = "%s (ID: %s) ist neu auf dem Server",
        actionSuccess = "Action erfolgreich ausgeführt",
        youGotWhitelisted = "Du wurdest eingereist, Glückwunsch!",
        notOnDuty = "Du bist nicht im Einreise Dienst!",
        onDuty = "Du bist nun im Einreise Dienst!",
        offDuty = "Du bist nun nicht mehr im Einreise Dienst!",
        callTeam = "%s (ID: %s) wartet auf eine Einreise",
        calledTeamSuccess = "Das Team wurde benachrichtigt",
        weaponNotAllowed = "Woher hast du denn die tolle Waffe?",
        rewardTeam = "Du erhälst %s$ für diese Aktion",

        ui_name = "Name:",
        ui_session = "Session:",
        ui_char = "Char:",
        ui_dob = "Char Birthday:",
        ui_unwl = "Unwhitelisted",
        ui_nothing_selected = "Kein Spieler ausgewählt",

        ui_btn_whitelist = "Whitelisten",
        ui_btn_ban = "Ban",
        ui_btn_kick = "Kick",
        ui_btn_skin = "Skin Menu",
        ui_btn_char = "Char Reset",
        ui_btn_dimension = "Einreise Dimension",

        ui_btn_submit = "Fertig",
        ui_btn_cancel = "Abbrechen",

        ui_wl_title = "WHITELIST",
        ui_wl_subTitle = "ANMERKUNG",
        ui_wl_desc = "Füge deiner Whitelist eine interne Anmerkung hinzu",

        ui_ban_title = "BAN",
        ui_ban_subTitle = "GRUND",
        ui_ban_desc = "Nenne einen Grund für den Ban",

        ui_kick_title = "KICK",
        ui_kick_subTitle = "GRUND",
        ui_kick_desc = "Nenne einen Grund für den Kick",
    },
}

function Notify(msg)
    TriggerEvent("ws_notify", "info", "Information", msg, 5000)
end

function HelpNotify(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end