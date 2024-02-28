fx_version 'bodacious'
game 'gta5'

author 'Ancomox | Emergency OS'
description 'Ingame extension for EmergencyOS by Ancomox'
version '2.3.2'

lua54 'yes'

files {
	'html/index.html',
	'html/app.js',
	'html/style.css',
	'html/static/img/bildschirm.png'
}

ui_page 'html/index.html'

shared_scripts { 
	'config/config.lua',
    'config/locales.lua'
}

client_scripts {
	'config/cl_integrations.lua',
	'client/client.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/server.lua',
	'config/api_config.lua',
	'server/server_actions.lua',
	'server/api_endpoint.lua'
}

escrow_ignore {
	'config/**.lua'
}
dependency '/assetpacks'