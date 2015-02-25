# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $.ajax(
    type: 'get'
    datatype: 'json'
    url: "http://localhost:3000/posts"
    ).done((data) ->
      # $("#postsA").append(HandlebarsTemplates.posts(data["musicPosts"]));
      # $("#postsB").append(HandlebarsTemplates.posts(data["lessonPosts"]));
      return
    ).fail ->
      confirm "failure"
      return
  $("#sectionA").hide();
  $("#sectionB").hide();
  $("#scrollup").hide();
  $("#sectionA").on 'scroll', ->
    if $('#sectionA').scrollTop() == 0
      $('#scrollup').fadeOut 200, ->
        $('#homeA').fadeIn 300
      return
    else
      $('#homeA').fadeOut 200, ->
        $('#scrollup').fadeIn 300
      return
    return
  $("#scrollup").on 'click', ->
    $("#sectionA").scrollTop(0)
    return
  $("#buttonA").on 'click', ->
    $("#landing-page").fadeOut 200, ->
      $("#sectionA").fadeIn(300);
      return
    return
  $("#buttonB").on 'click', ->
    $("#landing-page").fadeOut 200, ->
      $("#sectionB").fadeIn(300);
      return
    return
  $("#homeA").on 'click', ->
    $("#sectionA").fadeOut 200, ->
      $("#landing-page").fadeIn(300);
      return
    return
  $("#homeB").on 'click', ->
    $("#sectionB").fadeOut 200, ->
      $("#landing-page").fadeIn(300);
      return
    return;


$(document).ready(ready);
$(document).on('page:load', ready);

jQuery.fn.scrollTo = (elem, speed) ->
  $(this).animate { scrollTop: $(this).scrollTop() - $(this).offset().top + $(elem).offset().top }, if speed == undefined then 1000 else speed
  this
