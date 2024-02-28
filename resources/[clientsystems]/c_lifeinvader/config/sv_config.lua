ServerConfig = {}

ServerConfig.Log = {
    name = "Tagesschau",
    color = "16711686",
    title = "Tagesschau",
    iconURL = "https://cdn.discordapp.com/attachments/1132057769546100907/1153354014449209387/taggesschau.png",
    user =
    "https://discord.com/api/webhooks/1152352035522478214/uCBMtjLzgbpCIxnTXIgIqscbhVkKyOcMfaA09-cWgAKaq9ks77IO5QXXkWkrEJM3hBTm",
    admin =
    "https://discord.com/api/webhooks/1152352782251217007/xafNpBagLyqZHIU6HIuHgHTtFj5FsGIrYLtRVgV_gixZmgW3uWTFDk6SRJnT9yZR5YdM",
}

function SendMessage(webhook, message)
    local embed = {
        ["title"] = ServerConfig.Log.title,
        ["description"] = message,
        ["color"] = ServerConfig.Log.color,
        ["author"] = {
            ["name"] = ServerConfig.Log.name,
            ["icon_url"] = ServerConfig.Log.iconURL
        }
    }
    local jsonData = json.encode({ avatar_url = ServerConfig.Log.iconURL, embeds = { embed } })
    PerformHttpRequest(webhook, function(err, text, headers)
    end, 'POST', jsonData, { ['Content-Type'] = 'application/json' })
end
