# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $("#sectionA").hide();
  $("#sectionB").hide();
  $(".scrollup").hide();
  $('.fa-music').hover (->
    $('.fa-music').addClass 'fa-spin'
    $(this).children("h6").attr "color", "rgba(0,0,0,0.8)"
    return
    ), ->
    $('.fa-music').removeClass 'fa-spin'
    return
  $("#sectionA").on 'scroll', ->
    if $('#sectionA').scrollTop() == 0
      $('#sectionA .scrollup').fadeOut 200, ->
        $('#sectionA .homeButton').fadeIn 300
      return
    else
      $('#sectionA .homeButton').fadeOut 200, ->
        $('#sectionA .scrollup').fadeIn 300
      return
    return
  $("#sectionB").on 'scroll', ->
    if $('#sectionB').scrollTop() == 0
      $('#sectionB .scrollup').fadeOut 200, ->
        $('#sectionB .homeButton').fadeIn 300
      return
    else
      $('#sectionB .homeButton').fadeOut 200, ->
        $('#sectionB .scrollup').fadeIn 300
      return
    return
  $("#tagSection").on 'scroll', ->
    debugger
    if $('#tagSection').scrollTop() == 0
      $('#tagSection .scrollup').fadeOut 200, ->
        $('#tagSection .homeButton').fadeIn 300
      return
    else
      $('#tagSection .homeButton').fadeOut 200, ->
        $('#tagSection .scrollup').fadeIn 300
      return
    return
  $(".scrollup").on 'click', ->
    $(this).closest(".section-box").scrollTop(0)
    return
  $("#buttonA").on 'click', ->
    debugger
    $("#landing-page").fadeOut 200, ->
      $("#sectionA").fadeIn(300);
      return
    return
  $("#buttonB").on 'click', ->
    $("#landing-page").fadeOut 200, ->
      $("#sectionB").fadeIn(300);
      return
    return
  $("#sectionA .homeButton").on 'click', ->
    $("#sectionA").fadeOut 200, ->
      $("#landing-page").fadeIn(300);
      return
    return
  $("#sectionB .homeButton").on 'click', ->
    $("#sectionB").fadeOut 200, ->
      $("#landing-page").fadeIn(300);
      return
    return;

$(document).ready(ready);
$(document).on('page:load', ready);

