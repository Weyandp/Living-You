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

WS.settings = {
    price = 500,
    moneySymbol = "$",
    title = "REVIVE",
    subTitle = "STATION",
    range = 5.0
}

WS.positions = {
    vector3(357.7915, -592.3909, 28.7900),
}

WS.blip = {
    enabled = true,
    sprite = 487,
    display = 4,
    scale = 1.0,
    color = 3,
    shortrange = true
}

WS.marker = {
    typ = 21,
    move = false,
    rotate = true,
    enabled = true,
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

WS.language = {
    ["lang"] = "de",
    ["de"] = {
        ["helpNotify"] = "~INPUT_CONTEXT~ um zu interagieren",
        ["blip"] = "Revivestation",
        ["error_noPlayers"] = "Keine Spieler gefunden",
        ["success_revive"] = "Der Spieler wurde wiederbelebt",
        ["playerNotFound"] = "Spieler nicht gefunden",
        ["error_noMoney"] = "Du hast nicht genug Geld dabei oder auf der Bank",
        ["error_notActive"] = "Die Revivestation ist nicht aktiv",
        ["ui_btn"] = "Behandeln",
        ["ui_deathreason"] = "Bewusstlose Person",
        ["ui_loading"] = "Laden ...",
        ["ui_loadingText"] = "Spielerdaten werden gesammelt",
        ["ui_error"] = "Fehler",
        ["ui_loading_success"] = "Erfolgreich",
        ["ui_loading_revive"] = "Wiederbelebung im Gange",
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
