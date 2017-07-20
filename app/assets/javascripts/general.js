$(document).ready(function() {

  var headerHeight = $('.app-header').outerHeight();

  $('main').css('padding-top', headerHeight);

  if ($('.app-header-home').length) {
    var appHeaderHomeTop = $('.app-header-home').offset().top;
  }

  $(window).on('scroll', function() {
    var appHeaderHome = $('.app-header-home');
    var scroll = $(window).scrollTop();

    if (scroll >= appHeaderHomeTop) {
      appHeaderHome.addClass('app-header-fixed');
      $('.home-link').fadeIn();
      $('#home-top').css('margin-bottom', headerHeight);
    } else {
      appHeaderHome.removeClass('app-header-fixed')
      $('.home-link').fadeOut();
      $('#home-top').css('margin-bottom', 0);
    }
  });




  // dismiss flash messages
  $('.flash i').on('click', function(e) {
    $('.flash').slideUp(200);
  });
  $('.flash').delay(3000).slideUp(1000);

});
