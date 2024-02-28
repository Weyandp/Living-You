fx_version "cerulean"
games { "gta5" }
author "Webservices"

lua54 'yes'
escrow_ignore {
	'config/cl_config.lua',
	'config/sv_config.lua',
}

client_scripts {
    "config/cl_config.lua",
    "client/client.lua",
}

server_scripts {
    "config/cl_config.lua",
    "config/sv_config.lua",
    "server/server.lua",
}

ui_page "html/index.html"

files {
    "html/index.html",
    "html/assets/**/*.*",
}
dependency '/assetpacks'