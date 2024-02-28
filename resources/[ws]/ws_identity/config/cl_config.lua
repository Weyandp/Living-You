WS = {}

WS.Esx = {
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

WS.Settings = {
    ["minchars"] = 3, -- 3 CHARS MIN FOR FIRST & LASTNAME
    ["blacklist"] = {
        "<",
        ">",
        "test",
    }
}

WS.Language = {
    ["error_register"] = "ES IST EIN FEHLER AUFGETRETEN WÄHREND DER CHARAKTER ERSTELLUNG",
    ["registered"] = "DU HAST ERFOLGREICH DEINEN CHARAKTER ERSTELLT",

    ["command_denied"] = "Du hast keine berechtigung diesen Command zu Nutzen",
    ["noplayeridset"] = "Du hast keine ID Angegeben",
    ["playernotfound"] = "Es wurde kein spieler mit dieser ID Gefunden",

    ["youreseted"] = "Du hast den Charakter von %s Zurückgesetzt",
    ["yougotreseted"] = "Dein Charakter wurde von %s Zurückgesetzt",
    ["youresetedself"] = "Du hast deinen Charakter Zurückgesetzt",
}

function Notify(msg)
    -- TriggerEvent("ws_notify", "info", "Information", msg, 5000)
    TriggerEvent("vc_notify", "WEBSERVICES", msg, 5000)
end

function OpenSkinMenu()
    TriggerEvent('esx_skin:openSaveableMenu')
    -- TriggerEvent('esx_skin:playerRegistered')
end