window.addEventListener('message', function(event) {
    const data = event.data;
    const notification = document.getElementById('safezone-notification');
    const zoneName = document.getElementById('zone-name');

    if (data.type === "toggleSafeZone") {
        if (data.display) {
            notification.classList.remove('hidden');
            zoneName.textContent = data.zoneName;
        } else {
            notification.classList.add('hidden');
        }
    }
}); 
