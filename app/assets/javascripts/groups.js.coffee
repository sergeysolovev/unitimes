# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  createNewGroupForm()


createNewGroupForm = ->
  $form = $('#create-new-group-form-ajax')
  $input = $form.find('input[type=text]')
  $submit = $form.find('input[type=submit]')

  disableForm = ->
    $input.attr('disabled', 'disabled')
    $submit.attr('value', 'Сохранение...')
    $submit.attr('disabled', 'disabled')
    off
    
  enableForm = (empty)->
    $input.removeAttr('disabled')
    $submit.attr('value', $submit.data('oldtext'))
    $submit.removeAttr('disabled')
    if empty
      $input.val('')
    off
    
  validateForm = ()->
    $input.val() != ''
  $input.keypress(()->
    $(@).parent().removeClass('has-error')
  )
  $submit.data('oldtext', $submit.attr('value'))
  $form.submit (e)->
    e.preventDefault()
    if validateForm()
      $.ajax(
        type: 'post'
        url: $form.attr('action')
        data: $form.serialize()
        success: (data)->
          enableForm(true)
          $('#groups-table-wrapper').html($('#groups-table', data))
          off
        failure: ()->
          enableForm(false)
          off
      )
      disableForm()
    else
      $input.parent().addClass('has-error')
      $input.focus()
    off
  off