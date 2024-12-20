fx_version 'cerulean'
game 'gta5'

author 'LilZombie49 | Riverside Development'
description 'Elevator Script for QBCore Framework with Target Support'
version '1.0.1'

shared_scripts {
    'config/config.lua',
    'locales/en.lua'
}

client_script 'client/client.lua'
server_script 'server/server.lua'

dependencies {
    'qb-core',
    'qb-menu', -- Required for the menu
    'qb-target', -- Required target system
}
