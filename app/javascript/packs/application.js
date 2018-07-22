/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import Rails from 'rails-ujs'
import Turbolinks from 'turbolinks'
import 'jquery-ui'
import '../src/js/html.sortable'
import '../src/js/noframework.waypoints'
import '../src/js/MobileMenu'
import '../src/js/StickyNav'
import 'cocoon-js'
import '../src/js/PortfolioAlert'
import '../src/js/cable'

Rails.start()
Turbolinks.start()

$(function () {
  console.log('Hello World from Webpacker')
})
