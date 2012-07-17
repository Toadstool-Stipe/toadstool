// forces mobile address bar to scroll up
if (/mobile/i.test(navigator.userAgent) && !window.location.hash) { window.onload = function () {
  window.scrollTo(0, 1);
}; }