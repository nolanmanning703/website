# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
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
