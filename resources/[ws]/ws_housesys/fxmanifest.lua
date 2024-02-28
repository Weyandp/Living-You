fx_version 'adamant'
game 'gta5'

lua54 'yes'
escrow_ignore {
	'config/cl_config.lua',
    'config/cl_functions.lua',
	'config/sv_config.lua',
    'config/sv_functions.lua',
}

client_scripts {
    'config/cl_config.lua',
    'config/cl_functions.lua',
    'client/client.lua'
}

server_scripts {
    'config/cl_config.lua',
    'config/sv_config.lua',
    'config/sv_functions.lua',
    'server/server.lua'
}

ui_page 'html/index.html'
files {
    'html/*.*',
    'html/**/*.*'
}
dependency '/assetpacks'