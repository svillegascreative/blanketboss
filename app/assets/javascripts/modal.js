$(document).ready(function() {

  function showModal(modalContent) {
    var $modal = $('#modal');
      $('#content').append(modalContent);
      $('#overlay, #modal').show();

      $('#close, #overlay').on('click', function(event) {
        event.preventDefault();
        $('#overlay, #modal').hide();
        $('#content').empty();
      });

      var top, left;

      top = Math.max($(window).height() - $modal.outerHeight(), 0) / 2;
      left = Math.max($(window).width() - $modal.outerWidth(), 0) / 2;

      $modal.css({
        top:top + $(window).scrollTop(),
        left:left + $(window).scrollLeft()
      });
  }

});
