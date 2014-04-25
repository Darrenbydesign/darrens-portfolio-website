jQuery.fn.DBDCarousel = function(options) {
	return this.each(function() {
		var defaultOptions = {
			maxSize: 120,

			midSize: 110,

			minSize: 80,

			maxOpacity: 1,

			midOpacity: 0.6,

			minOpacity: 0.3,

			speed: 1500

		}
		if (options == null) options = [];
		options = jQuery.extend(defaultOptions, options);
		jQuery(base).
			prepend('<a class="fc-prev" href="#">Prev</a><a href="#" class="fc-next">Next</a>');
			jQuery('.fc-nav', base).css({
				height: jQuery(base).innerHeight() + 'px',
				display: 'block'
			});
		jQuery('>.nav.go-prev', base).css('float', 'left').click(movePrev);
		jQuery('>.nav.go-next', base).css('float', 'right').click(moveNext);
	})
}