--[[
	Author: Zuck3rFr3i
]]

fx_version 'bodacious'
game 'gta5'

Author 'Zuck3rFr3i'
description 'Report System'

ui_page "web/index.html"

client_scripts {
    "client.lua"
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    "server.lua"
}

files {
    "web/*"
}