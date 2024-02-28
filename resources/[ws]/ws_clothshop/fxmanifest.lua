fx_version 'cerulean'
game 'gta5'

lua54 'yes'
escrow_ignore {
	'config/config.lua',
}

client_scripts {
    'config/config.lua',
    'client/client.lua',
}

server_scripts {
    'config/config.lua',
    'server/server.lua',
}

ui_page 'html/index.html'
files {
    'html/*.*',
    'html/**/*.*',
    'html/**/**/*.*'
}
dependency '/assetpacks'