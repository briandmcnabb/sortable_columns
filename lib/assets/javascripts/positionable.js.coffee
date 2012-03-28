jQuery ->
  $('tbody#positionable').sortable
    axis: 'y'
    handle: '.handle'
    update: ->
      $.post($(this).data('position_url'), $(this).sortable('serialize'))