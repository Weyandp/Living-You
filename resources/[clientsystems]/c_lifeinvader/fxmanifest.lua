fx_version 'adamant'
game 'gta5'

description 'c_lifeinvader'
author 'cservice.dev / samu'
version '1.0'

lua54 'yes'

escrow_ignore {
	'config/*',
}

ui_page 'html/index.html'
file 'html/**/*.*'

server_script '@oxmysql/lib/MySQL.lua'
shared_script '@es_extended/imports.lua'
shared_script 'config/*.lua'
server_script 'server/**/*.lua'
client_script 'client/**/*.lua'

dependency '/assetpacks'