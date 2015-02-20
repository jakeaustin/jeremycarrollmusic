# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $("#sectionA").hide();
  $("#sectionB").hide();
  $("#buttonA").on 'click', ->
    $("#landing-page").hide();
    $("#sectionA").show();
    #$("#landing-page").hide('slide', {direction: 'right'}, window.width());
    #$("#sectionA").show('slide', {direction: 'right'}, window.width());
    return
  $("#buttonB").on 'click', ->
    $("#landing-page").hide();
    $("#sectionB").show();
    #$("#landing-page").hide('slide', {direction: 'right'}, window.width());
    #$("#sectionA").show('slide', {direction: 'right'}, window.width());
    return
  $("#backA").on 'click', ->
    $("#landing-page").show();
    $("#sectionA").hide();
    #$("#landing-page").hide('slide', {direction: 'right'}, window.width());
    #$("#sectionA").show('slide', {direction: 'right'}, window.width());
    return
  $("#backB").on 'click', ->
    $("#landing-page").show();
    $("#sectionB").hide();
    #$("#landing-page").hide('slide', {direction: 'right'}, window.width());
    #$("#sectionA").show('slide', {direction: 'right'}, window.width());
    return
  return;

$(document).ready(ready);
$(document).on('page:load', ready);

# $("#buttonA").on("click", function() {
#   console.log('bam');
#   $("#landing-page").hide('slide', {direction: 'right'}, window.width());
#   $("#sectionA").show('slide', {direction: 'right'}, window.width());
# });



