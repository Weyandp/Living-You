

fx_version 'cerulean'
game 'gta5'

ui_page 'html/index.html'
files {
    'postal.json',
    'html/*.*',
    'html/**/*.*'
}

shared_script 'config.lua'
client_script 'client/main.lua'
server_script 'server/main.lua'