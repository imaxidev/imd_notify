<img width="1920" height="512" alt="imdnotifybanner" src="https://github.com/user-attachments/assets/a97bbfca-c864-4d21-9d99-2c34388db33c" />
<img width="380" height="90" alt="imdnotifywarn" src="https://github.com/user-attachments/assets/618ace0a-d2a1-4db5-9a22-67cd86d5f707" />
<img width="380" height="90" alt="imdnotifysuccess" src="https://github.com/user-attachments/assets/0fdb2b80-b857-4c9b-995c-b3272d66e118" />
<img width="380" height="90" alt="imdnotifyinfo" src="https://github.com/user-attachments/assets/234360fe-0d34-4b68-950e-2acad96b50b1" />
<img width="380" height="90" alt="imdnotifyerror" src="https://github.com/user-attachments/assets/f8250b77-23cc-4a60-a571-f5c5a7ace912" />


# 🔔 imd_notify | Notification System for FiveM

**imd_notify** is a modern, elegant, and fully configurable notification system designed to replace the classic and boring `esx_notify`. Created with a minimalist "SaaS" (Software as a Service) approach, it features smooth animations, a progress bar, and dynamic positioning.

Developed by **imaxidev**.

## ✨ Key Features

- **Premium Design:** Dark, elegant, and modern style with subtle borders and deep shadows.
- **Dynamic Positioning:** Choose where notifications appear (`top-right`, `bottom-right`, `center-right`, `top-center`, `bottom-center`).
- **Smart Animations:** Entry and exit animations automatically adapt to the chosen screen position.
- **Fully Configurable:** Modify colors, default durations, and FontAwesome icons from a single `config.lua` file.
- **Progress Bar:** Visual indicator of the notification's remaining time.
- **Plug & Play with ESX:** Ready to intercept native ESX notifications with a simple tweak.

---

## 🛠️ Installation and Core Adaptation (es_extended)

To make all your scripts that use `ESX.ShowNotification` automatically use **imd_notify**, you need to make a small adjustment to the ESX core.

### Step 1: Download the script
1. Download the files from this repository.
2. Place the `imd_notify` folder inside your server's `resources` folder (you can group it in `[local]` or `[ui]`).

### Step 2: Modify `es_extended`
The ESX core looks for a script named `esx_notify` by default. Let's tell it that you are in charge now:

1. Go to the path: `es_extended/client/functions.lua`.
2. Find line `160` (approximately). You will see this function:
   exports["esx_notify"]:Notify(text, type, length)
3. Replace it exactly with this:
   exports["imd_notify"]:Notify(text, type, length)
4. Save the file.

### Step 3: Start the script
Add the following line to your `server.cfg` file, making sure it starts *after* `es_extended`:
ensure imd_notify

---

## 💻 How to use it in other scripts?

You have two ways to send notifications using this system:

### Option 1: Native ESX Method (Recommended)
If you already made the change in `es_extended`, you don't need to touch your other scripts. Everything using the base ESX function will adopt the new design:

> ESX.ShowNotification(message, type, duration)
> 
> ESX.ShowNotification('You bought a vehicle', 'success', 5000)
>
> ESX.ShowNotification('Not enough money', 'error', 3000)

### Option 2: Use the Export Directly
If you prefer to call the script directly or are using it outside the strict ESX environment:

> exports.imd_notify:Notify(message, type, duration)
>
> exports.imd_notify:Notify('Security alert on the perimeter', 'warning', 6000)

---

## ⚙️ Configuration (`config.lua`)

All visual aspects are controlled from `config.lua`. No need to touch HTML or CSS.

Config = {}
Config.Position = 'bottom-center' -- Change position here
Config.DefaultDuration = 5000

-- Customize texts and icons (uses FontAwesome V6)
Config.Types = {
    ['info'] = { icon = 'fa-solid fa-info', title = 'INFO' },
    ['success'] = { icon = 'fa-solid fa-check', title = 'SUCCESS' },
    ['error'] = { icon = 'fa-solid fa-xmark', title = 'ERROR' },
    ['warning'] = { icon = 'fa-solid fa-triangle-exclamation', title = 'WARNING' }
}

---

## 👨‍💻 Admin Commands (Testing)
If your group on the server is `superadmin`, you can test notifications live using the chat:

- /testnotify success "Successful operation"
- /testnotify error "Something went wrong"
- /testnotify warning "Watch out for this"
- /testnotify info "Informative message"

---
Created with ☕ by imaxidev.

# 🔔 imd_notify | Sistema de Notificaciones para FiveM

**imd_notify** es un sistema de notificaciones moderno, elegante y completamente configurable diseñado para reemplazar el clásico y aburrido `esx_notify`. Creado con un enfoque minimalista tipo "SaaS" (Software as a Service), cuenta con animaciones fluidas, barra de progreso y posicionamiento dinámico.

Desarrollado por **imaxidev**.

## ✨ Características Principales

- **Diseño Premium:** Estilo oscuro, elegante y moderno con bordes sutiles y sombras profundas.
- **Posicionamiento Dinámico:** Elige dónde aparecen las notificaciones (`top-right`, `bottom-right`, `center-right`, `top-center`, `bottom-center`).
- **Animaciones Inteligentes:** Las animaciones de entrada y salida se adaptan automáticamente a la posición elegida en la pantalla.
- **Totalmente Configurable:** Modifica colores, duraciones predeterminadas e iconos de FontAwesome desde un solo archivo `config.lua`.
- **Barra de Progreso:** Indicador visual de la duración de la notificación.
- **Plug & Play con ESX:** Listo para interceptar las notificaciones nativas de ESX con un simple cambio.

---

## 🛠️ Instalación y Adaptación del Core (es_extended)

Para que todos tus scripts que usan `ESX.ShowNotification` utilicen **imd_notify** automáticamente, debes hacer un pequeño ajuste en el núcleo de ESX.

### Paso 1: Descargar el script
1. Descarga los archivos de este repositorio.
2. Coloca la carpeta `imd_notify` dentro de la carpeta `resources` de tu servidor (puedes agruparla en `[local]` o `[ui]`).

### Paso 2: Modificar `es_extended`
El núcleo de ESX busca por defecto un script llamado `esx_notify`. Vamos a decirle que ahora tú mandas:

1. Ve a la ruta: `es_extended/client/functions.lua`.
2. Busca la línea `160` (aproximadamente). Verás esta función:
   exports["esx_notify"]:Notify(text, type, length)
3. Reemplázala exactamente por esto:
   exports["imd_notify"]:Notify(text, type, length)
4. Guarda el archivo.

### Paso 3: Iniciar el script
Añade la siguiente línea a tu archivo `server.cfg`, asegurándote de que inicie *después* de `es_extended`:
ensure imd_notify

---

## 💻 ¿Cómo usarlo en otros scripts?

Tienes dos formas de enviar notificaciones usando este sistema:

### Opción 1: Método Nativo de ESX (Recomendado)
Si ya hiciste el cambio en `es_extended`, no necesitas tocar tus otros scripts. Todo lo que use la función base de ESX adoptará el nuevo diseño:

> ESX.ShowNotification(mensaje, tipo, duracion)
>
> ESX.ShowNotification('Has comprado un vehículo', 'success', 5000)
> 
> ESX.ShowNotification('No tienes suficiente dinero', 'error', 3000)

### Opción 2: Usar el Export Directamente
Si prefieres llamar al script de forma directa o lo estás usando fuera del entorno estricto de ESX:

> exports.imd_notify:Notify(mensaje, tipo, duracion)
>
> exports.imd_notify:Notify('Alerta de seguridad en el perímetro', 'warning', 6000)

---

## ⚙️ Configuración (`config.lua`)

Todo el apartado visual se controla desde el `config.lua`. No necesitas tocar HTML ni CSS.

Config = {}
Config.Position = 'bottom-center' -- Cambia la posición aquí
Config.DefaultDuration = 5000

-- Personaliza los textos e iconos (usa FontAwesome V6)
Config.Types = {
    ['info'] = { icon = 'fa-solid fa-info', title = 'INFORMACIÓN' },
    ['success'] = { icon = 'fa-solid fa-check', title = 'ÉXITO' },
    ['error'] = { icon = 'fa-solid fa-xmark', title = 'ERROR' },
    ['warning'] = { icon = 'fa-solid fa-triangle-exclamation', title = 'ADVERTENCIA' }
}

---

## 👨‍💻 Comandos de Administrador (Pruebas)
Si tu grupo en el servidor es `superadmin`, puedes probar las notificaciones en vivo usando el chat:

- /testnotify success "Operación exitosa"
- /testnotify error "Algo salió mal"
- /testnotify warning "Cuidado con esto"
- /testnotify info "Mensaje informativo"

---
Creado con ☕ por imaxidev.
