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
    posters/observations_poster.jpg
    posters/worldview_lecture_poster.jpg
    posters/almost_maine_poster.jpg
    posters/Art_of_Murder_poster.jpg
    posters/Regeneration_Poster.jpg
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
      'Observations',
      'Worldview Lecture Poster',
      'Almost Maine',
      'The Art of Murder',
      'Regeneration',
      'The Legend Of Zelda: Type as Image',
      'DC Brainiac Wallpaper',
      'DC Superman Wallpaper',
      'DC Flash Wallpaper',
      'DC Green Lantern Wallpaper',
      'DC Batman Wallpaper'
    ]
    gon.imageText = @imageText = 
    [
      'The Flyte logo was a concept designed for a Christian based youth group in New York.',
      'The Black Epiphany logo was designed for a African-American enlightement movement in New Orleans, Lousiana',
      'Empire Fence Co. is a logo concept designed for a fencing company in Tulsa, Oklahoma',
      'Purls & knit is a logo designed for a knitting blog of the same name.',
      'A promotional poster for an Art gallery held at Oral Roberts University',
      'A promotional poster for a lecture series given on the Oral Roberts University campus',
      'A promotional poster for the performance of the play Almost, Maine',
      'A promotional poster for the performance of the play The Art of Murder',
      'A promotional poster for a dance performance held at Oral Roberts University',
      'A Legend of Zelda poster concept using typography as image ',
      'DC comics inspired Wallpaper created for Samsung Galaxy S3',
      'DC comics inspired Wallpaper created for Samsung Galaxy S3',
      'DC comics inspired Wallpaper created for Samsung Galaxy S3',
      'DC comics inspired Wallpaper created for Samsung Galaxy S3',
      'DC comics inspired Wallpaper created for Samsung Galaxy S3'
    ]
    # gon.hashZip = Hash[@imageName.zip(@imageText)]
    # @imageText = "Information will displayed here describing my work."
  end
end