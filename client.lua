QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('neon_jobchat:sendJobMessage')
AddEventHandler('neon_jobchat:sendJobMessage', function(senderId, jobLabel, message, jobColor)
    local xPlayer = QBCore.Functions.GetPlayerData()

    if xPlayer and xPlayer.job.label == jobLabel then
        TriggerEvent('chat:addMessage', {
            template = '<div class="chat-message job"><b><span style="color:'.. jobColor ..';">['.. jobLabel ..' Chat]:</span></b> {0}</div>',
            args = { message }
        })
    end
end)

RegisterNetEvent('neon_jobchat:sendGangMessage')
AddEventHandler('neon_jobchat:sendGangMessage', function(senderId, gangLabel, message, gangColor)
    local xPlayer = QBCore.Functions.GetPlayerData()

    if xPlayer and xPlayer.gang.label == gangLabel then
        TriggerEvent('chat:addMessage', {
            template = '<div class="chat-message gang"><b><span style="color:'.. gangColor ..';">['.. gangLabel ..' Chat]:</span></b> {0}</div>',
            args = { message }
        })
    end
end)


-- Notification system using ox_lib
RegisterNetEvent('neon_jobchat:notify')
AddEventHandler('neon_jobchat:notify', function(title, position)
    lib.notify({
        id = 'jobchat_notification',
        title = title,
        showDuration = false,
        position = position,
        style = {
            backgroundColor = '#141517',
            color = '#C1C2C5',
            ['.description'] = {
                color = '#909296'
            }
        },
        icon = 'ban',
        iconColor = '#C53030'
    })
end)
