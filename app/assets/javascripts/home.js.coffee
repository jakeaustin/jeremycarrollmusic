# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $.ajax(
    type: 'get'
    datatype: 'json'
    url: "http://localhost:3000/posts"
    ).done((data) ->
      debugger;
      $("#postsA").append(HandlebarsTemplates.posts(data));
      return
    ).fail ->
      confirm "failure"
      return
  $("#sectionA").hide();
  $("#sectionB").hide();
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
  $("#backA").on 'click', ->
    $("#sectionA").fadeOut 200, ->
      $("#landing-page").fadeIn(300);
      return
    return
  $("#backB").on 'click', ->
    $("#sectionB").fadeOut 200, ->
      $("#landing-page").fadeIn(300);
      return
    return;

$(document).ready(ready);
$(document).on('page:load', ready);



