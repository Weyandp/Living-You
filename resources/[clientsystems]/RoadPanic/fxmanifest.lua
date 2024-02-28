fx_version 'cerulean'
games  { 'gta5' }
author 'RoadToSix'
description 'PanicButton RoadPhone compatible'
version '1.1.0'

lua54 'yes'

shared_scripts {
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

ui_page "html/index.html"


files {
	"html/index.html",
	"html/sounds/panic.ogg"
}

escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'