fx_version 'adamant'
game 'gta5'

lua54 'yes'
escrow_ignore {
	'config/cl_config.lua',
	'config/sv_config.lua',
}

server_scripts {
	'config/cl_config.lua',
	'config/sv_config.lua',
	'server/server.lua'
}

client_scripts {
	'config/cl_config.lua',
	'client/client.lua',
}

ui_page 'html/index.html'
files {
	'html/index.html',
	'html/assets/**/*.*',
	'html/assets/**/**/*.*'
}
dependency '/assetpacks'