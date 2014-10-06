/*jslint browser: true*/ /*global  $*/
$(function() {
    'use strict';
    var ModalHide, SlideMenu, Carousel, LightBox, ImageSlider;

    ModalHide = function() {
        // $('#modal-1').addClass('md-unhide');
        $('.md-close').on('click', function() {
            $('.md-modal').toggleClass('md-hide',250);
        });
        $('.md-show').on('click', function() {
            // $('.md-modal').show();
            // $('.md-overlay').show();
            $('.md-modal').toggleClass('md-hide',200);
        });
    };
    ImageSlider = function() {
        $('.is-img').hide();
        $('.is-img').first().show();

        var listCounter = 0,
            imgsAryLength = $('.is-img').length;
        $('.is-img').hide().eq(listCounter).show();

        $('.is-prev').on("click", function() {
            $('.is-img').hide();
            if (listCounter < 0) {
                listCounter = imgsAryLength - 1;
            }
            $('.is-img').eq(listCounter).slideUp();
        });

        $('.is-next').on('click', function() {
            $('.is-img').hide();
            listCounter = listCounter % imgsAryLength;
            $('.is-img').eq(listCounter).slideDown();
            listCounter++;
        });
    };
    SlideMenu = function() {
        var
            $showLeft = $('#menu-left'),
            $showBottom = $('#menu-bottom'),
            $menuLeft = $('.slideNav-left'),
            $menuBottom = $('.slideNav-bottom'),

            closeLeftMenu = ('slideNav-left'),
            openLeftMenu = ('slideNav-left-open'),
            closeBottomMenu = ('slideNav-bottom'),
            openBottomMenu = ('slideNav-bottom-open');

        $showLeft.on('click', function() {
            // $menuLeft.toggle(function() {
            //     $(this).removeClass(closeLeftMenu).addClass(openLeftMenu);
            // });
            $menuLeft.toggleClass(closeLeftMenu, 'slow');
        });

        $showBottom.on('click', function() {
            // $menuBottom.toggle(function() {
            //     $(this).removeClass(closeBottomMenu).addClass(openBottomMenu);
            // });
            $menuBottom.toggleClass(closeBottomMenu, 'slow');
        });
    };
    Carousel = function() {
        $("#carousel ul").animate({
            marginLeft: -480
        }, 1000, function() {
            $(this).find("li:last").after($(this).find("li:first"));
            $(this).css({
                marginLeft: 0
            });
        });
        setInterval(5000);
    };


    LightBox = function() {
        // var current, size;
        $('.lb-trigger').on('click page:load', function(e) {
            // prevent default click event
            e.preventDefault();
            // grab href from clicked element
            // determine the index of clicked trigger
            // create HTML markup for lightbox window

            var image_href = $(this).attr("href"),
                slideNum = $('.lb-trigger').index(this) + 1,
                lightbox = '<div class="lightbox">' + '<button class="btn-tiny close">' + "Close Me" + '</button>' + '<div class="lb-content">' + '<div class="lb-nav">' + '<button class="lb-prev btn-norm"> < </button>' + '<button class="lb-next btn-norm"> > </button>' + '</div>' + '<figure>' + '<figcaption>' + '<h3>' + gon.imageName[slideNum - 1] + '</h3>' + '<p>' + gon.imageText[slideNum - 1] + '</p>' + '</figcaption>' + '</figure>' + '</div>' + '</div>',
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

            //Click anywhere on the page to get rid of lightbox window
            $('.lightbox').click(function() {
                $(this).fadeOut(300);
                $(this).remove();
            });
            $('.lb-prev').click(function() {
                $('.lightbox').click();
                $(previous_image).click();
            });
            $('.lb-next').click(function() {
                $('.lightbox').click();
                $(next_image).click();
            });
            $(this).keypress(function(e) {
                e.stopImmediatePropagation();
                e.preventDefault();
                var evt = e ? e : window.event,
                    keycode = evt.keyCode ? evt.keyCode : evt.which;
                if (keycode === 37 || keycode === 38) { // left or up arrow keys pressed
                    $('.lb-prev').click();
                } else if (keycode === 39 || keycode === 40) { // right or down arrow keys pressed
                    $('.lb-next').click();
                } else if (keycode === 27) { // escape key pressed
                    $('.lightbox').click();
                }
            });
        });
    };
    Carousel();
    LightBox();
    ImageSlider();
    SlideMenu();
    ModalHide();
});