if( document.readyState === 'complete' ) {
  stickyNav()
  console.log('already ready')
} else {
  document.addEventListener('DOMContentLoaded', function() {
    stickyNav()
  })
}
function stickyNav() {
  const sectionTitles = document.querySelectorAll('.section-title')
  const navbar = document.querySelector('.navbar');
  const stickyNav = new Waypoint({
    element: sectionTitles[0],
    handler: function(direction) {
      if (direction == 'down') {
        navbar.classList.add('navbar--solid')
      } else {
        navbar.classList.remove('navbar--solid')
      }
    }
  })
}