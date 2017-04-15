$(document).ready(function() {

  // Blanket filters
  $('.filter-select').SumoSelect();
  $('.filter-select-multiple').SumoSelect({placeholder: 'All'});

  // Blanket view
  $('.blanket-link').on('click', function(event) {
    event.preventDefault();

    $.ajax({
      url: $(this).attr('href'),
      method: 'GET',
    }).done(function(responseData) {
      showModal(responseData);
    });

    // if ($(window).width() > 1000) {
    //
    // }
  });

  // Blanket form
  $('.status-select').css('width', '300px').SumoSelect({placeholder: 'Select'});


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
