class StaticPagesController < ApplicationController
  def home
     @images = %w[
		Logos/Flyte_1.jpg
		Logos/blk_epiphany.jpg
		Logos/Empire_fence.jpg
		posters/observations.jpg
		posters/Regeneration_Poster.jpg
		]
	@title = "Home"

	@posts_render =  Post.feed3
	end

  def about
  	@title = "About"
  	@message_render = @message
  end

  def blog
  	@title = "Blog"
  end

  def portfolio
    @images = %w[
		Logos/Flyte_1.jpg
		Logos/blk_epiphany.jpg
		Logos/Empire_fence.jpg
		Logos/purls&knit_color_logo.jpg
		posters/almost_maine_poster.jpg
		posters/Art_of_Murder.jpg
		posters/observations.jpg
		posters/Regeneration_Poster.jpg
		]
	@title = "Portfolio"
  end
end
