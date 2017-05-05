$(document).ready(function(){

  // push content down so it is not hidden under header
  var headerHeight = $('.app-header').height();

  $('main').css('padding-top', headerHeight * 2);
  $('#home-top').css('padding-top', headerHeight * 2);


  // dismiss flash messages
  $('.flash i').on('click', function(e) {
    $('.flash').slideUp(200);
  });
  $('.flash').delay(3000).slideUp(1000);

});
