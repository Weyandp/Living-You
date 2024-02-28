fx_version 'cerulean'
games { 'gta5' }

client_scripts {
	"config.lua",
	"client/main.lua",
	"client/events.lua",
	"client/commands.lua",

	"client/exports/info.lua",
	"client/exports/play.lua",
	"client/exports/manipulation.lua",
	"client/exports/events.lua",
	"client/effects/main.lua",

	"client/emulator/interact_sound/client.lua",

	"addon/roadphone/client/client.lua"
}

server_scripts {
	"config.lua",
	"server/exports/play.lua",
	"server/exports/manipulation.lua",

	"server/emulator/interact_sound/server.lua",

	"addon/roadphone/server/server.lua"
}

ui_page "html/index.html"

files {
	"html/index.html",
	
	"html/scripts/config.js",
	"html/scripts/listener.js",
	"html/scripts/SoundPlayer.js",
	"html/scripts/functions.js",
	"html/phone-ring/astronomia.mp3",
	"html/phone-ring/cradles.mp3",
	"html/phone-ring/fersah.mp3",
	"html/phone-ring/imanbek.mp3",
	"html/phone-ring/iphonex.mp3",
	"html/phone-ring/night.mp3"
}

lua54 "yes"

escrow_ignore {
	"config.lua",
	"client/main.lua",
	"client/events.lua",
	"client/commands.lua",

	"client/exports/info.lua",
	"client/exports/play.lua",
	"client/exports/manipulation.lua",
	"client/exports/events.lua",
	"client/effects/main.lua",

	"client/emulator/interact_sound/client.lua",

	"addon/**/client/*.lua",
	"config.lua",
	"server/exports/play.lua",
	"server/exports/manipulation.lua",

	"server/emulator/interact_sound/server.lua",

	"addon/roadphone/server/server.lua"
}

dependency '/assetpacks'