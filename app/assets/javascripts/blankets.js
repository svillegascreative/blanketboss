$(document).ready(function() {

  // Blanket list action tabs
  $('.accordion-tabs').each(function(index) {
    $(this).children('li').first().children('a').addClass('is-active').next().addClass('is-open').show();
  });
  $('.accordion-tabs').on('click', 'li > a.tab-link', function(event) {
    if (!$(this).hasClass('is-active')) {
      event.preventDefault();
      var accordionTabs = $(this).closest('.accordion-tabs');
      accordionTabs.find('.is-open').removeClass('is-open').hide();

      $(this).next().toggleClass('is-open').toggle();
      accordionTabs.find('.is-active').removeClass('is-active');
      $(this).addClass('is-active');
    } else {
      event.preventDefault();
    }
  });


  // Blanket filters
  $('.filter-select').SumoSelect();
  $('.filter-select-multiple').SumoSelect({placeholder: 'All'});

  // Blanket view in modal
  $('.blanket-thumbnail, .blanket-link').on('click', function(event) {
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
