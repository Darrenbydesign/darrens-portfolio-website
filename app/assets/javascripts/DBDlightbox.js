$(function() {
  // global variables for script
  'use strict';
  var current, size;
  $('.lb-trigger').click(function(e) {

    // prevent default click event
    e.preventDefault();

    // grab href from clicked element
    // determine the index of clicked trigger
    // create HTML markup for lightbox window
    var image_href = $(this).attr("href"),
      slideNum = $('.lb-trigger').index(this) + 1,
      lightbox =
      '<div class="lightbox">' +
      '<button class="btn-tiny close">' + "Close Me" + '</button>' +
      '<div class="lb-content">' +
      '<div class="lb-nav">' +
      '<button class="lb-prev btn-norm"> < </button>' +
      '<button class="lb-next btn-norm"> > </button>' +
      '</div>' +
      '<figure>' +
      // '<img src="' + image_href + '"/>' +
      '<figcaption>' +
      '<h3>' + gon.image_name + '</h3>' +
      '<p>' + gon.image_text + '</p>' +
      '</figcaption>' +
      '</figure>' +
      '</div>' +
      '</div>',
      previous_image,
      next_image;
    //insert lightbox HTML into page
    $('body').append(lightbox);

    // fill lightbox with .lb-trigger hrefs in .grid-box
    $('.grid-box').find('.lb-trigger').each(function() {
      var $href = $(this).attr('href');
      if (image_href === $href) {
        $('.lb-content').prepend($('<img src="' + $href + '">').show());
      } else {
        $('.lb-content').prepend($('<img src="' + $href + '">').hide());
      }
    });
    //slideNum = $('.lb-trigger').index(this) + 1,
    console.log("lb-length:" + $('.lb-trigger').length)
    if (slideNum === $('.lb-trigger').length) {
      next_image = $('.lb-trigger').first(); //.attr("href");
      previous_image = $(this).closest('li').prev('li').find('.lb-trigger'); //.attr("href");
    } else if (slideNum === 1) {
      next_image = $(this).closest('li').next('li').find('.lb-trigger'); //.attr("href");
      previous_image = $('.lb-trigger').last(); //.attr("href");
    } else {
      next_image = $(this).closest('li').next('li').find('.lb-trigger'); //.attr("href");
      previous_image = $(this).closest('li').prev('li').find('.lb-trigger'); //.attr("href");
    }

    // console.log("slideNum:" + slideNum + " next_image href: " + next_image.attr("href") + "\tprevious_image href: " + previous_image.attr("href"));
    // }

    //Click anywhere on the page to get rid of lightbox window
    $('.lightbox').click(function(event) {
      // using .on() instead of .live(). more modern, and fixes event bubbling issues
      $(this).fadeOut(300);
      $(this).remove();
    });

    $('.lb-prev').click(function() {
      $('.lightbox').click();
      $(previous_image).click();
    })
    $('.lb-next').click(function() {
      $('.lightbox').click();
      $(next_image).click();
    })

    $('body').keypress(function(e) {
      e.stopImmediatePropagation();
      e.preventDefault();
      var evt = e ? e : window.event;
      var keycode = evt.keyCode ? evt.keyCode : evt.which;
      if (keycode === 37 || keycode === 38) { // left or up arrow keys pressed
        $('.lb-prev').click();
      } else if (keycode === 39 || keycode === 40) { // right or down arrow keys pressed
        $('.lb-next').click();
      } else if (keycode === 27) { // escape key pressed
        $('.lightbox').click();
      }
    });
  });

});