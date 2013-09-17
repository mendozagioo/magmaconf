$(document).ready ->
  $('#daily').mousemove (e)->
    x = e.pageX - 70;
    y = e.pageY - 70;
    imgTop = (e.pageY - 340) * -1;
    imgLeft = (e.pageX - 120) * -1;
    $('.lens').css({
      top: y,
      left: x
    })

    $('.lens img').css({
      top: imgTop,
      left: imgLeft
    })
