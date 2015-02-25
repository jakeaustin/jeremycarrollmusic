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
  $(".scrollup").hide();
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
  $(".scrollup").on 'click', ->
    $(this).closest(".section-box").scrollTop(0)
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

jQuery.fn.scrollTo = (elem, speed) ->
  $(this).animate { scrollTop: $(this).scrollTop() - $(this).offset().top + $(elem).offset().top }, if speed == undefined then 1000 else speed
  this
