document.addEventListener('DOMContentLoaded', function() {
  function removeTransition(e) {
    this.classList.remove('key--playing');
  }

  function playSound(e) {
    const audio = document.querySelector(`audio[data-key="${e.keyCode}"]`)
    const key = document.querySelector(`.keys__key[data-key="${e.keyCode}"]`)

    if (!audio) return;
    audio.currentTime = 0;
    audio.play();
    key.classList.add('key--playing');
  }

  const keys = document.querySelectorAll(".keys__key");
  keys.forEach(key => key.addEventListener('transitionend', removeTransition));

  window.addEventListener('keydown', playSound);
});
