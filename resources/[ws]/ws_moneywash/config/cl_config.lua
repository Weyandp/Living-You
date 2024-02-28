WS = {}

-- LOGO AND UI STRINGS
-- IN html/assets/js/cfg.js

WS.settings = {
    getSharedObject = "esx:getSharedObject",
    fees = 25, -- in %, 0 to disable
    progressTime = 30, -- in secs
    randomPos = false, -- random Pos for every client
    whitelistedJobs = {
        enabled = false, 
        list = {
            "jobname"
        }
    },
    notifyCops = {
        enabled = true,
        chance = 20, -- 0-100%
        showBlipTime = 2, -- in min
        jobs = {
            "police"
        }
    }
}

WS.positions = {
    vector3(969.7623, -2113.1487, 31.4797)
}

WS.quickButtons = {
    [1] = 50000,
    [2] = 250000,
    [3] = 500000
    -- need to be exacly 3 buttons
}

WS.blip = { -- police blip
    sprite = 161,
    scale = 2.0,
    color = 3,
    pulseBlip = true
}

WS.marker = {
    typ = 21,
    move = false,
    rotate = true,
    enabled = true,
    drawDistance = 30,
    color = {
        r = 255,
        g = 120,
        b = 0,
        t = 100
    },
    size = {
        x = 1.0,
        y = 1.0,
        z = 1.0
    }
}

WS.language = {
    success = "Du hast %s$ Schwarzgeld zu %s$ Bargeld gewaschen",
    failedMoney = "Du hast nicht genug Schwarzgeld",
    wrongJob = "Du hast nicht den richtigen Job",
    copNotify = "Passanten melden merkwürdige Aktivitäten"
}

function Notify(msg)
    TriggerEvent("ws_notify", "info", "Information", msg, 5000)
end

function HelpNotify(msg)
    SetTextComponentFormat("STRING")
    TriggerEvent('cs_hud:HelpUI', 'E', msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end