# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("<div>",
  "class":"test",
   text: "Click Me!"
   click : ->
     $(this).toggleClass("test");
   ).appendTo("new_presentation")
