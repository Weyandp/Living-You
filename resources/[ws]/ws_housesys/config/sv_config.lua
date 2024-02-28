WS_S = {}

WS_S.houseLimit = 0 -- 0 = unlimited, house limit per player
WS_S.updateInterval = 15 -- in min
WS_S.disableDBInsert = true -- auto sql import (can bug with oxmysql)

WS_S.cooldown = {
    ["warehouse_open"] = 3, -- in secs, 0 to disable
    ["warehouse_move"] = 1, -- in secs, 0 to disable
    ["sell_request"] = 10, -- in secs, 0 to disable
}

WS_S.discord = {
    enabled = true,
    servername = "web.services.io",
    url = "https://web-services.io/",
    icon = "https://tobias.isfucking.pro/4zzE5A.png",
    color = "3447003",
    username = "WS - HOUSESYS",
    webhooks = {
        buy = "YOUR-DISCORD-WEBHOOK-URL",
        sell = "YOUR-DISCORD-WEBHOOK-URL",
        storage = "YOUR-DISCORD-WEBHOOK-URL",
        upgrade = "YOUR-DISCORD-WEBHOOK-URL"
    }
}