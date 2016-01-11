$(function() {
  $('.menu-link').on('click', function() {
    var currentNav = $('.menu-item');
    $('.menu-item.menu-item-current').removeClass('menu-class-current');
    $('.menu-link').addClass('menu-class-current');
  })
})
