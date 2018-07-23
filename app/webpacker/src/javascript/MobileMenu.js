document.addEventListener('DOMContentLoaded', function() {
  const navbar = document.querySelector('.navbar')
  const menuIcon = document.querySelector('.navbar__menu-icon')
  const menuContent = document.querySelector('.navbar__menu-content')
  menuIcon.addEventListener('click', toggleTheMenu.bind(this))
  function toggleTheMenu() {
    menuContent.classList.toggle('navbar__menu-content--unhidden')
    navbar.classList.toggle('navbar--is-expanded')
    menuIcon.classList.toggle('navbar__menu-icon--close-x')
  }
})