
// javascript no frameworks
// javascript no frameworks

document.addEventListener('DOMContentLoaded', () => {
    window.addEventListener('message', messageEvent);
});

function messageEvent(event) {
    const eventData = event.data;
    if (eventData.target === 'notify') { 
        // console.log(eventData.timeOut)
        createElement(eventData) 
    } 
}

function createElement(item) {
    // console.log(JSON.stringify(item))
    const mainContainer = document.getElementById('target-container');
    const newElement = document.createElement('div');

    newElement.className = `target-notify ${item.typeNotify}`;
    newElement.innerHTML = `
        <span class="material-symbols-outlined">notifications_active</span>
        <p class="text-notify">${item.textNotify}</p>
        <p class="title">${item.typeNotify === 'success' ? 'SUCCESS' : 'ERROR'}</p>
        <div class="progress-${item.typeNotify}"></div>
    `;
    mainContainer.appendChild(newElement);

    const progressBar = newElement.querySelector(`.progress-${item.typeNotify}`);
    progressBar.style.animationDuration = `${5000 / 1000}s`;

    setTimeout(() => newElement.classList.add('show'), 10);
    if (enableSound) {
        if (item.typeNotify === 'success') {
            playSound(successSound, successVolume);
        } else {
            playSound(errorSound, errorVolume);
        }
    }
    setTimeout(() => {
        newElement.classList.remove('show');
        newElement.classList.add('hide');
        setTimeout(() => newElement.remove(), 300);
    }, item.timeOut);
}

function playSound(file, volume) {
    // console.log(file, volume)
    const audio = new Audio();
    audio.src = "/view/sound/" + file;
    audio.volume = volume;
    audio.play();
}