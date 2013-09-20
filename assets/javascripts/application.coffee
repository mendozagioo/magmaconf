$(document).ready ->
  setTimeout (->
    dela()
  ), 7000

  dela = ->
    #$('#text').imageLens(lensSize: 200)
    $('#desi').imageLens(lensSize: 200)
    $('#sandi').imageLens(lensSize: 200)
    $('#sponsors').imageLens(lensSize: 200)
