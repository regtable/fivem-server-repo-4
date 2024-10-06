
fx_version 'cerulean'
games { 'gta5' }

author 'Your Name'
description 'Admin Menu for FiveM Server'
version '1.0.0'

-- Client and server scripts
client_script 'client.lua'
server_script 'server.lua'

-- UI page
ui_page 'ui/index.html'

-- Files required for the UI
files {
    'ui/index.html',
    'ui/styles.css',
    'ui/script.js'
}
