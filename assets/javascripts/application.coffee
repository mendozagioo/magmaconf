$(document).ready ->
  $(window).mousemove (e)->
    x = e.pageX - 70;
    y = e.pageY - 70;
    $('canvas').css({
      top: y,
      left: x
    })
