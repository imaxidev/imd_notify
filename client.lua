exports('Notify', function(msg, type, length)
    local nType = type or 'info'
    local notifyData = Config.Types[nType] or Config.Types['info']
    
    SendNUIMessage({
        action = 'showNotification',
        message = msg,
        type = nType,
        title = notifyData.title,
        length = length or Config.DefaultDuration,
        icon = notifyData.icon,
        position = Config.Position
    })
end)

RegisterNetEvent('esx:showNotification')
AddEventHandler('esx:showNotification', function(msg, type, length)
    exports.imd_notify:Notify(msg, type, length)
end)