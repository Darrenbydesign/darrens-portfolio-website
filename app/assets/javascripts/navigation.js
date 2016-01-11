var navigationStep = function() {
  var currentNav = $('.menu-item');
  $('.menu-link').click(function() {
    currentNav.addClass('menu-item-current');
  });
}
$(document).ready(navigationStep);