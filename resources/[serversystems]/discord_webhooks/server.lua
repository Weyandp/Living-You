--[[
	Author: Zuck3rFr3i
]]
local hookchannels = {
	--["tuner"] = 'https://discord.com/api/webhooks/1096486307678670898/cqsnt5n9CvKWjwU6-xc4ZPZknDKgVvkutJn4ZnYNWBoPaqEgmj710RbsgRtHLjViZMsf',
	["bug"] = 'https://discord.com/api/webhooks/1211323134465020015/L1vZcHfQAT_KkZLSsMF84ngEaGoK5LOckMOl-MCSs8qhn1DY0Z5m7KeIr8K2ryv0zCgp'
}

local d_colors = {
	["orange"] = 16739328,
	["red"] = 16711684,
	["blue"] = 524543,
	["brown"] = 5584664,
	["yellow"] = 16645888
}

function sendToDiscord(hookchannel, color, name, message)
	local hchannel = ""
	if hookchannels[hookchannel] then
		hchannel = hookchannels[hookchannel]
	end
	local colorD = 0
	if d_colors[color] then
		colorD = d_colors[color]
		if name ~= "" then
			if message ~= "" then
				local embed = {
				{
					["type"] = 1,
					["color"] = colorD,
					["title"] = "**".. name .."**",
					["description"] = message
				}
			}
			PerformHttpRequest(hchannel, function(err, text, headers) end, 'POST', json.encode({username, embeds = embed}), { ['Content-Type'] = 'application/json' })
				
			else
				print("[DiscordwebHook]: Es wurde keine Nachricht angegeben, Webhook wurde abgebrochen!")
			end
		else
			print("[DiscordwebHook]: Es wurde kein Titel angegeben, Webhook wurde abgebrochen!")
		end
	else
		print("[DiscordwebHook]: Die angegebene Farbe ist nicht vorhanden, Webhook wurde abgebrochen!")
	end
end