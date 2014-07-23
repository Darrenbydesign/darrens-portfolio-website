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
  def inspiration
    @title ="Inspiration"
  end
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
      'Black Epiphany is an organization based in New Orleans, Louisiana. It is a movement created to help African Americans in lower income neighborhoods overcome and reach beyond the struggles they face in their communities. It’s member base is made up of young adults. The founder of this organization asked me to design a logo to visualize his idea. I worked with his concept and created the design displayed here. The design features a globe overlapped by a fist which is holding a broken chain. The chain is a symbol meant to represent breaking stereotypes that are typically assumed in these communities. The founder of the Black Epiphany was very pleased with this design because it represents the organizational mission in a very literal way.',
      'Empire Fence Co, is a fencing company based in Tulsa, Oklahoma. I decided to use the company as a branding and identity experiment after I discovered their current logo and company design. My goal was to create a new look for the company that would make them appear more modern while also reflecting their company name. The redesign is a crown that also appears to look like a chain-linked fence.',
      'Purls & knit is a logo designed for a knitting blog of the same name.',
      'Observations is a poster created for a student senior art show. The design focuses on the students and their individual sense of style. The design concept shows the audience a very close and personal image of the artists as if they were icons on a stain glass window.',
      'This poster was created for a lecture series held on the Oral Roberts University campus. The design was inspired by the fist lecture of the series, Stewardship of the Mind: Thinking like Christians. The design uses simple icon imagery that depicts a compassionate mind versus a more law conscious mind.',
      'Almost Maine, is a story about love in various forms. The director wanted to communicate this love in the promotional designs. These posters were designed for the performance held at Oral Roberts University.  The key symbols used in past performances were the night sky and a park bench. My design uses the heart shaped stars in the sky surrounded by a yellow “honey” moon. I coupled this with the park bench placed in at the bottom of the design facing toward the sky. I felt this gave a subtle allusion to the  main setting and theme of the play.',
      'Regeneration was a dance performance held at Oral Roberts University.  The promotion package consisted of both print and digital media. The goal of these images was to represent the dancers in an almost cosmic fashion. I represented their essence as if it was being lifted up for their audience to see the glorious light of their performance. This idea of regeneration was meant to reflect internal and spiritual side of the metamorphosis, while showing the effects on the physical through the movements of the dancer’s poses.',
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