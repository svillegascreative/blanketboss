$(document).ready(function(){

  $('.login-link').on('click', function(e) {
    e.preventDefault();
    $('.home-login').removeClass('hide-login');
  });
  $('.login-close').on('click', function(e) {
    e.preventDefault();
    $('.home-login').addClass('hide-login');
  });

});
