// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

let ready = undefined
let set_positions = undefined

set_positions = function() {
  $('.card').each(function(i) {
    $(this).attr('data-pos', i + 1)
  })
}

ready = function() {
  set_positions()
  $('.sortable').sortable()
  $('.sortable').sortable().bind('sortupdate', function(e, ui) {
    const updated_order = []
    set_positions()
    $('.card').each(function(i) {
      updated_order.push({
        id: $(this).data('id'),
        position: i + 1
      })
    })
    $.ajax({
      type: 'PUT',
      url: '/portfolios/sort',
      data: { order: updated_order
    }
    })
  })
}

$(document).ready(ready)