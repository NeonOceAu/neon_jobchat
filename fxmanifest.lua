fx_version 'cerulean'
game 'gta5'

author 'Neon Scripts'
description 'Job and Gang Chat for QB-Core'
version '1.0.0'

lua54 'yes'

shared_script {
    'config.lua',
    '@ox_lib/init.lua'
}
client_script 'client.lua'
server_script 'server.lua'

dependencies {
    'ox_lib'
}
