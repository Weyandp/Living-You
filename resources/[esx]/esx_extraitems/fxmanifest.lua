fx_version 'adamant'

game 'gta5'

author 'Velociti Entertainment aka Human Tree92'

description 'ESX Extra Items'

version '1.6+'

shared_scripts {
	'@es_extended/imports.lua',
	'@es_extended/locale.lua',
	'config.lua',
	'locales/*.lua'
}

server_scripts {
	'server/main.lua'
}

client_scripts {
	'client/main.lua',
	'client/menus.lua'
}

dependencies {
	'es_extended',
	--'esx_shops'
}
