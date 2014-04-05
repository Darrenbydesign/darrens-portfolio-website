// $(document).ready(function() {
// 	$('.lb-trigger').click(function(e) {
// 		e.preventDefault();
// 		var image_href = $(this).attr("href");
// 		var image_name = "Image Name Here"
// 		if ($('.lightbox').length > 0) {
// 			$('.lb-content').html('<img src= "' + image_href + '"/>')
// 			$('.lightbox').fadeIn('slow');
// 		} 
// 		else 
// 		{
// 			var lightbox =
// 				'<div class="lightbox">' +
// 					'<div class="btn-tiny close">'+ "Close Me" + '</div>' +
// 					'<div class="lb-content">' +
// 			          '<div class="lb-nav">' +
// 				          '<a class="lb-prev slide-nav">prev</a>' +
// 				          '<a class="lb-next slide-nav">next</a>' +
// 			          '</div>'
// 						'<figure>' +
// 							'<img src="' + image_href + '"/>' + 
// 							'<figcaption>' + 
// 								'<h3>' + image_name + '</h3>' + 
// 								'<p>' + 'Lorem ipsum Quis elit ut non ea consequat aliqua cupidatat Ut minim occaecat veniam esse.' + '</p>' +
// 							'</figcaption>' + 
// 						'</figure>' +
// 					'</div>' +
// 				'</div>'
// 			$('body').append(lightbox);
// 		}
// 	});
// 	$('.close').on('click', function() {
// 		$('.lightbox').hide();
// 	});
// });