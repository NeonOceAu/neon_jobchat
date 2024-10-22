QBCore = exports['qb-core']:GetCoreObject()

Config = Config or {}

RegisterCommand('jobc', function(source, args, rawCommand)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local job = xPlayer.PlayerData.job.name
    local jobLabel = xPlayer.PlayerData.job.label
    local jobColor = Config.Jobs[job] or '#FFFFFF' -- Default color if not found

    if Config.NoChatJobs[job] then
        TriggerClientEvent('neon_jobchat:notify', source, "You cannot use Job Chat.", Config.NotifyPosition)
        return
    end

    local message = table.concat(args, " ")
    if message == "" then
        TriggerClientEvent('neon_jobchat:notify', source, "You need to type a message.", Config.NotifyPosition)
        return
    end

    TriggerClientEvent('neon_jobchat:sendJobMessage', -1, source, jobLabel, message, jobColor)
end, false)

RegisterCommand('gangc', function(source, args, rawCommand)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local gang = xPlayer.PlayerData.gang.name
    local gangLabel = xPlayer.PlayerData.gang.label
    local gangColor = Config.Gangs[gang] or '#FFFFFF' -- Default color if not found

    if Config.NoChatGangs[gang] then
        TriggerClientEvent('neon_jobchat:notify', source, "You cannot use Gang Chat.", Config.NotifyPosition)
        return
    end

    local message = table.concat(args, " ")
    if message == "" then
        TriggerClientEvent('neon_jobchat:notify', source, "You need to type a message.", Config.NotifyPosition)
        return
    end

    TriggerClientEvent('neon_jobchat:sendGangMessage', -1, source, gangLabel, message, gangColor)
end, false)
