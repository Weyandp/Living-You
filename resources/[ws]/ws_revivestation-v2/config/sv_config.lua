WS_S = {}

WS_S.settings = {
    ambulanceJob = "ambulance",
    checkDistance = true,
    checkInterval = 5, -- in min
}

WS_S.check = {
	clock = {
		enabled = false,
		from = 0,
		to = 6
	},
	maxAmbulance = {
		enabled = false,
		count = 5
	}
}

WS_S.discord = { 
    enabled = true,
    servername = "web.services.io",
    url = "https://web-services.io/",
    icon = "https://tobias.isfucking.pro/4zzE5A.png",
    color = "3447003",
    username = "WS - REVIVESTATION",
    webhook = "YOUR-DISCORD-WEBHOOK"
}

function RevivePlayer(playerId)
    TriggerClientEvent("esx_ambulancejob:revive", playerId)
end