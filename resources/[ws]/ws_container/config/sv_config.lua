WS_S = {}

WS_S.susStrings = {
    "<",
    ">",
    "script",
    "iframe",
    "video",
    ".audio",
    ".mp3",
    ".mp4",
    ".webm",
    ".mov",
    ".mkv",
    ".png",
    ".gif",
    ".jpg",
    ".jpeg",
    "http",
    "://",
    "discord",
    "cdn."
}

WS.keyGenerator = {
    enabled = true,
    maxGenAmount = 100,
    commandName = "lionroleplaykey", -- this command only works in your server(txAdmin)-Console
    length = 20,
    prefix = {
        enabled = true,
        name = "ws_"
    }
}

WS_S.webhooks = {
    log = "", -- admin logs with identifers
    global = "", -- global log for all users that logs if someone wins
    codes = "https://discord.com/api/webhooks/1138618151051997254/XfqVehQIT7efAoJFTu0CanO1uEVgiqNmqWyqXDre_0XZMeSBWTHXo9FmARkM0cxms59b", -- log for generated keys
}

WS_S.embed = {
    username = "Web-Services.io - Container",
    author = {
        name = "Web-Services.io",
        url = "https://discord.gg/webservices",
        icon_url = "https://tobias.isfucking.pro/M1hOog.gif"
    },
    footer = {
        text = "Logs - Web-Services.io",
        icon_url = "https://tobias.isfucking.pro/M1hOog.gif"
    }
}

function giveVehiclePlayer(identifier, type, hash, label, plate)
    -- identifer = players xPlayer.identifier (eg. steam or license)
    -- type = type (config), if you want to use planes or boats except cars
    -- hash = Vehicle Hash
    -- label = Car Label (config)
    -- plate = generated Car Plate 
    Query('INSERT INTO owned_vehicles (owner, plate, vehicle, type, stored) VALUES (@owner, @plate, @vehicle, @type, @stored)', {
        ['@owner'] = identifier,
        ['@plate'] = plate,
        ['@vehicle'] = '{"plate":"' .. plate .. '", "model":' .. hash .. '}',
        ['@type'] = type,
        ['@stored'] = 1
    })
end