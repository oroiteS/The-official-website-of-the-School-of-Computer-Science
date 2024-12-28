const video = document.getElementById('video');

video.onclick = function() {
    //判断当前是处于暂停还是播放状态，如果是暂停状态，就播放， 如果是播放状态， 就暂停
    if (video.paused === true) {
        video.play();
        this.classList.add("icon-pause");
        this.classList.remove("icon-play");
    } else {
        video.pause();
        this.classList.remove("icon-pause");
        this.classList.add("icon-play");
    }
}




