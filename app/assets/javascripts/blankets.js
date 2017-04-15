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
      $('.modal-content').append(responseData);
    });

    if ($(window).width() > 1000) {

    }
  });

  // Blanket form
  $('.status-select').css('width', '300px').SumoSelect({placeholder: 'Select'});

});
