# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> init()

init = () -> 
    $('.ui.button').each (x, e) -> $(e).click -> $(@).addClass('positive').siblings().removeClass('positive')

    $('.new_visitor').submit ->
        $('input[name="visitor[coming]"]').val($('#btnComing').hasClass('positive'))
        $('input[name="visitor[driver]"]').val($('#btnDriver').hasClass('positive'))