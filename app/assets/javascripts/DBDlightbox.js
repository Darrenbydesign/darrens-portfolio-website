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
        '<h3>' + "image_name" + '</h3>' +
        '<p>' + 'Lorem ipsum Quis elit ut non ea consequat aliqua cupidatat Ut minim occaecat veniam esse.' + '</p>' +
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
  });

  // $(document.documentElement).keyup(function(event) {

  //   var $this = $(this),
  //     dest;

  //   if (event.keyCode === 37) { // left arrow key
  //     dest = current - 1;
  //     if (dest < 0) {
  //       dest = size - 1;
  //     }
  //   } else if (event.keyCode === 39) { // right arrow key
  //     dest = current + 1;
  //     if (dest > size - 1) {
  //       dest = 0;
  //     }

  //   }

  //   // fadeOut curent slide, FadeIn next/prev slide
  //   $('.lb-content img:eq(' + current + ')').hide();
  //   $('.lb-content img:eq(' + dest + ')').show();

  //   // update current slide
  //   current = dest;
  // });
});