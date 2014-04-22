class StaticPagesController < ApplicationController
  def home
     @images = %w(
		Logos/Flyte_1.jpg
		Logos/blk_epiphany.jpg
		Logos/Empire_fence.jpg
		Logos/purls&knit_color_logo.jpg
		posters/almost_maine_poster.jpg
		posters/Art_of_Murder.jpg
		posters/observations.jpg
		posters/Regeneration_Poster.jpg
		posters/TLOZ_type.jpg
		posters/worldview_lecture.jpg
		phone_wallpapers/batman.jpg
		phone_wallpapers/brainiac.jpg
		phone_wallpapers/flash.jpg
		phone_wallpapers/superman.jpg
		)
	@title = "Home"
	end

  def about
  	@title = "About"
  end

  def blog
  	@title = "Blog"
  end

  def portfolio
    @images = %w(
		Logos/Flyte_1.jpg
		Logos/blk_epiphany.jpg
		Logos/Empire_fence.jpg
		Logos/purls&knit_color_logo.jpg
		posters/almost_maine_poster.jpg
		posters/Art_of_Murder.jpg
		posters/observations.jpg
		posters/Regeneration_Poster.jpg
		posters/TLOZ_type.jpg
		posters/worldview_lecture.jpg
		phone_wallpapers/batman.jpg
		phone_wallpapers/brainiac.jpg
		phone_wallpapers/flash.jpg
		phone_wallpapers/superman.jpg
		)
		# Logos/Flyte_2.jpg
		# Logos/Flyte_3.jpg
		# Logos/purls&knit_blk_white_logo.jpg
		# Logos/purls&knit_label.jpg
		# weddings/Ruth_Matt_wedding_invite.jpg
		# weddings/Ruth_Matt_wedding_invite_back.jpg
		# weddings/Ruth_Matt_wedding_invite.jpg
		# weddings/Ruth_Matt_wedding_invite_back.jpg
		# illustration/FOTC_Germaine.jpg
		# illustration/starfox_1.jpg	
	@title = "Portfolio"
  end
end
