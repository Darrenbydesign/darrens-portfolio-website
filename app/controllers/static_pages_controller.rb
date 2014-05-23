class StaticPagesController < ApplicationController
  def home
     @images = %w[
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
    phone_wallpapers/brainiac.jpg
    phone_wallpapers/superman.jpg
    phone_wallpapers/flash.jpg
    phone_wallpapers/batman.jpg
    ]

    @title = "Portfolio"
  end
  def test
    @title = 'Test'
    @images = %w[
    Logos/Flyte_1.jpg
    Logos/blk_epiphany.jpg
    Logos/Empire_fence.jpg
    Logos/purls&knit_color_logo.jpg
    posters/almost_maine_poster.jpg
    posters/Art_of_Murder.jpg
    posters/observations.jpg
    posters/Regeneration_Poster.jpg
    phone_wallpapers/brainiac.jpg
    phone_wallpapers/superman.jpg
    phone_wallpapers/flash.jpg
    phone_wallpapers/batman.jpg
    ]
    @imageName = %w[
      Flyte TheBlackEpiphany EmpireFenceCo. Purls&knit AlmostMaine 
      TheArtofMurder Observations Regeneration]
    gon.image_name = @imageName

    @imageText = "Information will displayed here describing my work."
    gon.image_text = @imageText
  end
end
