--[[
	Author: Zuck3rFr3i
]]

RegisterNetEvent("report:sendreport")
AddEventHandler("report:sendreport", function(titel, descript, pname)
    local psource = source
	local time = os.date('%d.%m.%Y %H:%M:%S')
	local ped = GetPlayerPed(psource)
	local pos = GetEntityCoords(ped)
	local convPos = {}
	convPos.x = pos.x
	convPos.y = pos.y
	convPos.z = pos.z
	local jsonfie = json.encode(convPos)
    local licenceident = nil
    for k,v in pairs(GetPlayerIdentifiers(psource))do      
        if string.sub(v, 1, string.len("license:")) == "license:" then
            licenceident = v
        end
    end

    if licenceident then
        local res = MySQL.insert('INSERT INTO bugreports (licence, playername, titel, description, time, position) VALUES (?, ?, ?, ?, ?, ?)',
            {licenceident, pname, titel, descript, time, jsonfie}
        )
        local name = pname.." mit Lizenz: "..licenceident.." hat gemeldet:"
        local msgstr = "**Titel:** "..titel.." \n **Beschreibung:** "..descript.."\n **Position:** "..pos.x..", "..pos.y..", "..pos.y.."\n **Meldezeit:** "..time
        exports["discord_webhooks"].sendToDiscord(0, "bug", "orange", name, msgstr)
    else
        print("Error trying to find Playerident Licence!!")
    end
end)