fx_version 'cerulean'
author 'xLeon0666'
description 'Hex_Banking'
game 'gta5'
lua54 'yes'

client_scripts {
    'client/main.lua'
}

shared_scripts {
    'configs/config.lua',
    'configs/framework.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    '@oxmysql/lib/MySQL.lua',
    'configs/server_config.lua',
    'server/main.lua',
}

escrow_ignore {
    'configs/config.lua',
    'configs/server_config.lua',
    'configs/framework.lua'
}

ui_page 'html/index.html'

files {
    'html/**/'
}
dependency '/assetpacks'