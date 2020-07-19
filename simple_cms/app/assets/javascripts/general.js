
// click on logo, get welcome message
document.addEventListener("DOMContentLoaded", function() {
  var logo = document.getElementById('logo');
  logo.addEventListener('click', function(event) {
    event.preventDefault();
    alert('Welcome!');
  });
});
