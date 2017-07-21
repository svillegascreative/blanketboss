$(document).ready(function() {

  // push content below fixed header
  var headerHeight = $('.app-header').outerHeight();
  $('main').css('padding-top', headerHeight);


  // handle header switching on homepage
  if ($('.home-container').length) {
    var appHeaderHomeTop = $('.app-header-home').offset().top;
    var appHeaderHomeLink = $('.app-header-home .home-link');
    appHeaderHomeLink.css('display', 'none');
    
    $(window).on('scroll', function() {
      var appHeaderHome = $('.app-header-home');
      var scroll = $(window).scrollTop();

      if (scroll >= appHeaderHomeTop) {
        appHeaderHome.addClass('app-header-fixed');
        appHeaderHomeLink.fadeIn();
        $('#home-top').css('margin-bottom', headerHeight);
      } else {
        appHeaderHome.removeClass('app-header-fixed');
        appHeaderHomeLink.fadeOut();
        $('#home-top').css('margin-bottom', 0);
      }
    });
  }





  // dismiss flash messages
  $('.flash i').on('click', function(e) {
    $('.flash').slideUp(200);
  });
  $('.flash').delay(3000).slideUp(1000);

});
