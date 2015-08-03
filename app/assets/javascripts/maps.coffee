# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  map = L.map('map')
  set_viewport(map)
  set_background(map)

set_viewport = (map)->
  map.setView([
    52.12
    11.62
  ], 13)

set_background = (map)->
  L.tileLayer('http://{s}.mqcdn.com/tiles/1.0.0/map/{z}/{x}/{y}.png',
    attribution: 'Your attribution statement'
    maxZoom: 25
    subdomains: [
      'otile1'
      'otile2'
      'otile3'
      'otile4'
    ]).addTo map

$(document).ready(ready)
$(document).on('page:load', ready)
