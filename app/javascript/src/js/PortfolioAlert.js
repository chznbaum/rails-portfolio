if( document.readyState === 'complete' ) {
  portfolioAlert()
} else {
  document.addEventListener('DOMContentLoaded', function() {
    portfolioAlert()
  })
}
function portfolioAlert() {
  const alerts = document.querySelectorAll('.alert')
  const closeIcons = document.querySelectorAll('.alert__close')
  for (i = 0; i < alerts.length; i++) {
    closeIcons[i].addEventListener('click', closeTheAlert.bind(i))
  }
  function closeTheAlert(event) {
    // alerts.classList.toggle('navbar__menu-content--unhidden')
    // alerts.classList.toggle('navbar--is-expanded')
    // alerts.classList.toggle('navbar__menu-icon--close-x')
    event.preventDefault
    event.stopPropagation
    alerts[this].classList.add('alert--dismissed')
    return false
  }
}