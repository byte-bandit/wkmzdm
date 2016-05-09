# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> init()

init = () -> 
    $('.toggle.button').each (x, e) -> $(e).state()

    $('#btnComing').click ->
        $(@).state(
            text:
                active: 'Ich komme mit'
                inactive: 'Ich komme nicht mit'
            )

    $('#btnDriver').click ->
        $(@).state(
            text:
                active: 'Ich kann fahren'
                inactive: 'Ich kann nicht fahren'
            )

    $('.new_visitor').submit ->
        $('input[name="visitor[coming]"]').val($('#btnComing').hasClass('active'))
        $('input[name="visitor[driver]"]').val($('#btnDriver').hasClass('active'))