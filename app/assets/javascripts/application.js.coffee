#= require jquery/jquery
#= require divy/lib/divy
#= require turbolinks
#= require_tree .

create_rb_pixels = ->
  red   = "#f00"
  white = "#fff"

  rb_pixels = [
    [red,   red,   red,   red,   red,   red,   red,   red,   red],
    [red,   red,   red,   red,   red,   red,   red,   red,   red],
    [red,   red,   white, white, red,   white, red,   red,   red],
    [red,   red,   white, red,   red,   white, white, red,   red],
    [red,   red,   red,   red,   red,   red,   red,   red,   red],
    [red,   red,   red,   red,   red,   red,   red,   red,   red],
  ]
  $('.rb-pixels').divy(rb_pixels, { 'ratio' : 'fixed' });

$(window).bind 'page:change', ->
  create_rb_pixels()
$ ->
  create_rb_pixels()
