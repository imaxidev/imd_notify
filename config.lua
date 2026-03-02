Config = {}

-- Opciones de posición: 
-- 'top-right', 'bottom-right', 'center-right', 'top-center', 'bottom-center'
Config.Position = 'top-center'

Config.DefaultDuration = 5000

Config.Types = {
    ['info'] = { 
        icon = 'fa-solid fa-info', 
        title = 'INFORMACIÓN'
    },
    ['success'] = { 
        icon = 'fa-solid fa-check', 
        title = 'ÉXITO'
    },
    ['error'] = { 
        icon = 'fa-solid fa-xmark', 
        title = 'ERROR'
    },
    ['warning'] = { 
        icon = 'fa-solid fa-triangle-exclamation', 
        title = 'ADVERTENCIA'
    }
}