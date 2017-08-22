document.addEventListener("DOMContentLoaded", function() {
  const secHand = document.querySelector('.sec-hand');
  const minHand = document.querySelector('.min-hand');
  const hourHand = document.querySelector('.hour-hand');

  function setTime() {
    const now = new Date();

    const seconds = now.getSeconds();
    const secondsDegree = ((seconds / 60) * 360) + 90;
    secHand.style.transform = `rotate(${secondsDegree}deg)`

    const minutes = now.getMinutes();
    const minutesDegree = ((minutes / 60) * 360) + 90;
    minHand.style.transform = `rotate(${minutesDegree}deg)`

    const hours = now.getHours();
    const hoursDegree = ((hours / 12) * 360) + 90;
    hourHand.style.transform = `rotate(${hoursDegree}deg)`
  }

  setInterval(setTime, 1000)
})
