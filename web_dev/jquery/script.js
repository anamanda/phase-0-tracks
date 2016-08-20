$(document).ready(function() {

  $('#hat').hide()

  $('#glasses').hide()

  $('#mustache').hide()

  $('#puppy').click(function() {
    $('#hat').show();
    $('#glasses').show();
    $('#mustache').show();
    $('#thanks').append("<p>Thanks for decorating the puppy!</p>")
    $('#undecorate').append("<p>Click on each individual item to undecorate the puppy.</p>")
  });


});

console.log("I'm working")