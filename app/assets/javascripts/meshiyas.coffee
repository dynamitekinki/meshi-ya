# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ($) ->
  $('tr[data-href]').addClass('clickable').click (e) ->
    if !$(e.target).is('a')
      window.location = $(e.target).closest('tr').data('href')
    return
  return
