let positionConfigured = false;

window.addEventListener('message', function (event) {
    if (event.data.action === 'showNotification') {
        const data = event.data;
        const container = document.getElementById('notif-container');

        if (!positionConfigured) {
            container.className = data.position;
            positionConfigured = true;
        }

        const id = Math.floor(Math.random() * 100000);

        let animIn = 'anim-in-right';
        let animOut = 'anim-out-right';

        if (data.position.includes('top-center')) {
            animIn = 'anim-in-top';
            animOut = 'anim-out-top';
        } else if (data.position.includes('bottom-center')) {
            animIn = 'anim-in-bottom';
            animOut = 'anim-out-bottom';
        }

        const html = `
            <div id="notify-${id}" class="notification ${data.type} ${animIn}">
                <div class="notif-icon-wrapper">
                    <i class="${data.icon}"></i>
                </div>
                <div class="notif-content">
                    <span class="notif-title">${data.title}</span>
                    <span class="notif-msg">${data.message}</span>
                </div>
                <div class="progress-wrapper">
                    <div class="progress-bar" style="animation-duration: ${data.length}ms;"></div>
                </div>
            </div>
        `;

        container.insertAdjacentHTML('beforeend', html);

        setTimeout(() => {
            const el = document.getElementById(`notify-${id}`);
            if (el) {
                el.classList.remove(animIn);
                el.classList.add(animOut);
                setTimeout(() => el.remove(), 400);
            }
        }, data.length);
    }
});