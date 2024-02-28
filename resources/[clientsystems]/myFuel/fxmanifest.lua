fx_version 'bodacious'
game 'gta5'

name 'myFuel'
author 'DaBurnerGermany'
version '1.1.5'

lua54 'yes'

provide "LegacyFuel"

ui_page 'html/ui.html'

escrow_ignore {
	'config.lua',
	'config-vehicle.lua',
	'client/client.lua',
	'server/server.lua'
}

-- What to run
client_scripts{
	'config.lua',
	'config-vehicle.lua',
	'client/functions.lua',
	'client/client.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/functions.lua',
	'server/server.lua'
}

exports {
	'GetFuel',
	'SetFuel',
	'GetFuelUnit',
	'GetFuelInUnit',
	'GetFuelType'
}

files {
	'html/ui.html',
	'html/ui.js',
	'html/js/*',
	'html/gfx/*',
	'html/css/*',
	'html/model/*'
}              
dependency '/assetpacks'