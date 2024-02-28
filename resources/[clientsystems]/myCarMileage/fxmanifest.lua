fx_version 'bodacious'
game 'gta5'

name 'myCarMileage'
author 'DaBurnerGermany for myScripts'
version '1.0.0'

lua54 'yes'

escrow_ignore {
  'config.lua',
  'client.lua',
  'server.lua', 
}

client_scripts {
	'config.lua',
	'client.lua'
}

server_scripts {
	'config.lua',
	'@mysql-async/lib/MySQL.lua',
	'server.lua'
}
dependency '/assetpacks'