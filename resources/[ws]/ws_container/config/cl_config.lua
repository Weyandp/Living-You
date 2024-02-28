WS = {}

WS.debug = false -- dont touch

WS.esxPrefix = "esx"
WS.ESXPrefix = "ESX"
WS.getSharedObject = "getSharedObject"

WS.redeemPosition = vector3(858.6256, -3203.6619, 5.9950)

WS.successSounds = {
    enabled = true,
    sounds = {
        "https://tobias.isfucking.pro/t30LUR.mp3", -- PILLE
        "https://tobias.isfucking.pro/cy0noi.mp3", -- VIBEZ
        "https://tobias.isfucking.pro/Stqzlb.mp3", -- 500PS
        "https://tobias.isfucking.pro/DVHqm1.mp3", -- UFF
        "https://tobias.isfucking.pro/BFNiiy.mp3", -- Aventador
        "https://tobias.isfucking.pro/5UJLPm.mp3", -- Honda Civic
    }
}

WS.language = {
    helpNotify = "~INPUT_CONTEXT~ um zu interagieren",
    noKeyProvided = "Du hast keinen Key eingetragen",
    modelNotFound = "Das Fahrzeug konnte nicht geladen werden, melde dich beim Support",
    chooseContainer = "Bitte wähle einen Container aus um fortzufahren",
    keyInvalid = "Der angegebene Code wurde nicht gefunden oder ist ungültig",
    checkingInProgress = "Derzeit ist bereits eine validierung in Gange",
    kickMessage = "Lion Roleplay, Container",
    successMessage = "Glückwunsch! Dein Container-Fund: %s befindet sich nun in deiner Garage",
    noItem = "Du hast keinen Container-Key dabei"
}

WS.infoText = "Herzlich Willkommen bei Living-You Import<br>Hier kannst du deinen Container öffnen, gibt dafür deinen Key in das Feld auf dem Hauptbildschirm ein und drücke auf den Knopf unter dem Input Feld.<br>Nach dem du den Key eingelöst hast, musst du nun einen aus 6 Containern wählen. Hinter jedem Container steckt ein exklusives Import Fahrzeug.<br>Nach dem du ein einen Container ausgewählt hast, wird das Fahrzeug in deine Garage gestellt, dort kannst du diese dann anschließen ausparken.<br>Viel Glück!<br><br><br><br><br><br><br>"
WS.serverName = "Living-You" 
WS.serverLogoUrl = "https://tobias.isfucking.pro/GTtsHJ.png"

WS.vehicleShopRessourceName = "esx_vehicleshop"

WS.marker = {
    enabled = true,
    move = false,
    rotate = true,
    drawDistance = 50,
    type = 21,
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

WS.blip = {
    enabled = true,
    sprite = 677,
    display = 4, 
    scale = 1.0,
    color = 1,
    shortrange = true, 
    name = "VIP - Container"
}

WS.mode = {
    keysActive = true, -- only one can be true
    itemActive = false, -- only one can be true
    itemName = "container_key"
}

WS.extraReward = {
    enabled = false, 
    chance = 30, -- in %
    item = {
        name = "case",
        label = "Case",
        amount = 1
    }
}

WS.possibleRewards = {
    {
        model = "BMWS",
        label = "BMW",
        type = "car" -- car / boat
    },
    {
        model = "rs6avant20",
        label = "Audi",
        type = "car" -- car / boat
    },
    {
        model = "18performante",
        label = "Lambogini",
        type = "car" -- car / boat
    },
    {
        model = "a45",
        label = "Mercedes Aklasse",
        type = "car" -- car / boat
    },
    {
        model = "e92lb",
        label = "BMW",
        type = "car" -- car / boat
    },
    {
        model = "GODzPRIORDTAYCAN",
        label = "Porsche Elektro",
        type = "car" -- car / boat
    }
    -- max is 6x cars
}

function Notify(color, msg)
    -- Examples:
    -- TriggerEvent("red_notify", getColorId(color), "Information", msg, 5000)
    -- TriggerEvent("notifications", color, "Information", msg)
    TriggerEvent("ws_notify", "info", "Information", msg, 5000)
end