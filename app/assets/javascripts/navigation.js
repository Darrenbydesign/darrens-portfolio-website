$(function() {
  // $('.menu-link[href^="/' + location.pathname.split("/")[1] + '"]').parent().addClass('menu-item-current');
  $('.menu-item .menu-link').on('click', function() {
    $('menu-item.menu-item-current').removeClass('menu-item-current');
    $(this).parent().addClass('menu-item-current');
  });
});