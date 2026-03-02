ESX.RegisterCommand('testnotify', 'superadmin', function(xPlayer, args, showError)
    local type = args.type or 'info'
    local msg = args.mensaje or 'Mensaje de prueba de imd_notify'
    
    xPlayer.showNotification(msg, type, Config.DefaultDuration)
    
end, true, {
    help = 'Probar el sistema imd_notify',
    validate = false,
    arguments = {
        {name = 'type', help = 'Tipo: info, success, error, warning (por defecto: info)', type = 'string'},
        {name = 'mensaje', help = 'Texto de prueba (por defecto: Mensaje de prueba)', type = 'string'}
    }
})