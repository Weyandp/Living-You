API = {
    -- (!) Die API funktioniert ausschließlich mit dem Cloud SCP (!)
    -- Mehr Informationen unter: https://control-panel.ws/cloud
    endpoint = "https://scp.web-control.cloud/api",
    -- API Daten im SCP unter: Server > Verwalten > API Zugangsdaten
    token = "API_KEY",
    project = "PROJECT_UUID"
}

function CreateEntry(src, target, action, notice)
    -- GetDiscordId() returns false if not found
    -- or the discord id (without discord: prefix)
    local discordId = GetDiscordId(src) 
    if not discordId or discordId == false then -- check if discord id was found
        print("Failed to get discord id from " .. GetPlayerName(src) .. " (ID: " .. src .. ")")
        return
    end

    -- Create API Entry
    CreateApiEntry(":entry:create", {
        admin = { 
            discord = discordId, -- discord id without discord: prefix
            identifiers = GetFormattedIdentifiers(target) -- identifiers of the admin
        },
        target = {
            name = GetPlayerName(target), -- name of the target
            identifiers = GetFormattedIdentifiers(target) -- identifiers of the target (identifiers.discord, ...)
        },
        action = action, -- "whitelist" / "ban" / "kick"
        notice = notice -- notice from admin
    })
end

function CreateApiEntry(route, data)
    -- send post request to api 
    PerformHttpRequest((API.endpoint .. ":entry:create"), function(err, text, headers)
        if err == 200 then -- check if request was successful (http code 200)
            local resp = json.decode(text) -- decode json response

            if resp then -- check if response is valid
                if resp.state == "success" then -- check if response state is success
                    print("[^4WS^7] >> ^2Success^7 api entry created!")
                else 
                    -- print("[^4WS^7] >> ^1Error^7 " .. resp.message[1]) -- print first error message 
                    print("[^4WS^7] >> ^1Errors^7 " .. table.concat(resp.message, ", ")) -- print all error messages
                end
            else 
                print("[^4WS^7] >> ^1Error^7 whle creating api entry! Code: " .. err)
            end
        else 
            print("[^4WS^7] >> ^1Error^7 while creating api entry! Code: " .. err)
        end
    end, "POST", json.encode(data), { 
        ["Content-Type"] = "application/json",
        ["X-AUTH-TOKEN"] = API.token,
        ["X-PROJECT-UUID"] = API.project
    })
end

function GetDiscordId(src)
    for _, v in pairs(GetPlayerIdentifiers(src)) do
        if string.find(v, "discord:") then
            return string.gsub(v, "discord:", "")
        end
    end
    return false
end

function GetFormattedIdentifiers(src)
    local identifiers = {}

    for k,v in pairs(GetPlayerIdentifiers(src)) do
        if string.find(v, "steam:") then
            identifiers.steam = v
        elseif string.find(v, "license:") then
            identifiers.license = v
        elseif string.find(v, "xbl:") then
            identifiers.xbl = v 
        elseif string.find(v, "ip:") then
            identifiers.ip = v
        elseif string.find(v, "discord:") then
            identifiers.discord = v
        elseif string.find(v, "live:") then
            identifiers.live = v
        elseif string.find(v, "fivem:") then
            identifiers.fivem = v
        end
    end

    return identifiers
end