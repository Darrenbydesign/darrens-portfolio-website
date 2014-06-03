class StaticPagesController < ApplicationController
  def home
     @images = %w[
    Logos/black_epiphany_logo.jpg
    Logos/Empire_fence_logo.jpg
    Logos/purls&knit_logo.jpg
    Logos/Flyte_logo.jpg
    ]
    @carouselName = 
    [
      'The Black Epiphany',
      'Empire Fence Co.',
      'Purls & knit',
      'Flyte'
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
    @title = "Portfolio"
    
    @images = %w[
    Logos/Flyte_logo.jpg
    Logos/black_epiphany_logo.jpg
    Logos/Empire_fence_logo.jpg
    Logos/purls&knit_logo.jpg
    posters/almost_maine_poster.jpg
    posters/Art_of_Murder_poster.jpg
    posters/observations_poster.jpg
    posters/Regeneration_Poster.jpg
    posters/worldview_lecture_poster.jpg
    posters/TLOZ_type_poster.jpg
    phone_wallpapers/brainiac_wallpaper.jpg
    phone_wallpapers/superman_wallpaper.jpg
    phone_wallpapers/flash_wallpaper.jpg
    phone_wallpapers/Green_lantern_wallpaper.jpg
    phone_wallpapers/batman_wallpaper.jpg
    ]
    gon.imageName = @imageName = 
    [
      'Flyte',
      'The Black Epiphany',
      'Empire Fence Co.',
      'Purls & knit',
      'Almost Maine',
      'The Art of Murder',
      'Observations',
      'Regeneration',
      'Worldview Lecture Poster',
      'The Legend Of Zelda: Type as Image',
      'DC Brainiac Wallpaper',
      'DC Superman Wallpaper',
      'DC Flash Wallpaper',
      'DC Green Lantern Wallpaper',
      'DC Batman Wallpaper'
    ]
    gon.imageText = @imageText = 
    [
      'Flyte',
      'The Black Epiphany',
      'Empire Fence Co.',
      'Purls & knit',
      'Almost Maine',
      'The Art of Murder',
      'Observations',
      'Regeneration',
      'Worldview Lecture Poster',
      'The Legend Of Zelda: Type as Image',
      'DC Brainiac Wallpaper',
      'DC Superman Wallpaper',
      'DC Flash Wallpaper',
      'DC Green Lantern Wallpaper',
      'DC Batman Wallpaper'
    ]
    gon.hashZip = Hash[@imageName.zip(@imageText)]
    @imageText = "Information will displayed here describing my work."
  end
end