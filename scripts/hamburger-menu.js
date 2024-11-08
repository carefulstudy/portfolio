/* Toggle between hiding and showing the menu content */
function showMenu() {
  document.getElementById("hamburger-menu").classList.toggle("show");
}

/* Hide the menu if user clicks outside of it */
window.onclick=function(event) {
  if (!event.target.matches('.hamburger-btn')) {
    var dropdowns=document.getElementsByClassName("hamburger-content");
    var i;
    for (i=0; i < dropdowns.length; i++) {
      var openDropdown=dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}