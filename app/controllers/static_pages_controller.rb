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
    Logos/purls&knit_logo.jpg
    Logos/black_epiphany_logo.jpg
    Logos/Empire_fence_logo.jpg
    Logos/Empire_Fence_Stationery.jpg
    web_design/PIAT-APP-iMac-Mockup-3.jpg
    web_design/PIAT-APP-iMac-Mockup.jpg
    web_design/PIAT-APP-Macbook-Mockup-2.jpg
    web_design/PIAT-APP-Macbook-Mockup.jpg
    posters/observations_poster.jpg
    posters/Observations-Poster-Mockup-2.jpg
    posters/worldview_lecture_poster.jpg
    posters/Worldview-Poster-Mockup-2.jpg
    posters/almost_maine_poster.jpg
    posters/AlmostMaine-Poster.jpg
    posters/Regeneration_Poster.jpg
    posters/Regeneration-Poster.jpg
    posters/Moby_Dick_book-mockup.jpg
    posters/Great_Expectations_book-mockup.jpg
    phone_wallpapers/brainiac_wallpaper.jpg
    phone_wallpapers/Braniac_GalaxyS5_Mockup.jpg
    phone_wallpapers/superman_wallpaper.jpg
    phone_wallpapers/Superman_GalaxyS5_Mockup.jpg
    phone_wallpapers/flash_wallpaper.jpg
    phone_wallpapers/Flash_GalaxyS5_Mockup.jpg
    phone_wallpapers/batman_wallpaper.jpg
    phone_wallpapers/Batman_GalaxyS5_Mockup.jpg
    ]
    gon.imageName = @imageName = 
    [
      'Flyte',
      'Purls & knit',
      'The Black Epiphany',
      'Empire Fence Co.',
      'Empire Fence Co.',
      'PIAT Interface',
      'PIAT Interface',
      'PIAT Interface',
      'PIAT Interface',
      'Observations',
      'Observations',
      'Worldview Lecture Poster',
      'Worldview Lecture Poster',
      'Almost Maine',
      'Almost Maine',
      'Regeneration',
      'Regeneration',
      'Moby Dick',
      'Great Expectations',
      'DC Brainiac Wallpaper',
      'DC Brainiac Wallpaper',
      'DC Superman Wallpaper',
      'DC Superman Wallpaper',
      'DC Flash Wallpaper',
      'DC Flash Wallpaper',
      'DC Batman Wallpaper',
      'DC Batman Wallpaper'
    ]
    gon.imageText = @imageText = 
    [
      'The Flyte logo was a concept designed for a Christian based youth group in New York.',
      'Purls & knit is a logo designed for a knitting blog of the same name. The logo was designed for use on packages of custom knitting pieces, lotion bottles and homemade soaps',
      'Black Epiphany is an organization based in New Orleans, Louisiana. It is a movement created to help African Americans in lower income neighborhoods overcome and reach beyond the struggles they face in their communities. It’s member base is made up of young adults. The founder of this organization asked me to design a logo to visualize his idea. I worked with his concept and created the design displayed here. The design features a globe overlapped by a fist which is holding a broken chain. The chain is a symbol meant to represent breaking stereotypes that are typically assumed in these communities. The founder of the Black Epiphany was very pleased with this design.',
      'Empire Fence Co, is a fencing company based in Tulsa, Oklahoma. I decided to use the company as a branding and identity experiment after I discovered their current logo and company design. My goal was to create a new look for the company that would make them appear more modern while also reflecting their company name. The redesign is a crown that also appears to look like a chain-linked fence.',
      '',
      '',
      '',
      '',
      '',
      'Observations is a poster created for a student senior art show. The design focuses on the students and their individual sense of style. The design concept shows the audience a very close and personal image of the artists as if they were icons on a stain glass window.',
      '',
      'This poster was created for a lecture series held on the Oral Roberts University campus. The design was inspired by the fist lecture of the series, Stewardship of the Mind: Thinking like Christians. The design uses simple icon imagery that depicts a compassionate mind versus a more law conscious mind.',
      '',
      'Almost Maine, is a story about love in various forms. The director wanted to communicate this love in the promotional designs. These posters were designed for the performance held at Oral Roberts University.  The key symbols used in past performances were the night sky and a park bench. My design uses the heart shaped stars in the sky surrounded by a yellow “honey” moon. I coupled this with the park bench placed in at the bottom of the design facing toward the sky. I felt this gave a subtle allusion to the  main setting and theme of the play.',
      '',
      'Regeneration was a dance performance held at Oral Roberts University.  The promotion package consisted of both print and digital media. The goal of these images was to represent the dancers in an almost cosmic fashion. I represented their essence as if it was being lifted up for their audience to see the glorious light of their performance. This idea of regeneration was meant to reflect internal and spiritual side of the metamorphosis, while showing the effects on the physical through the movements of the dancer’s poses.',
      'Moby Dick, is famously known for involving a white whale. I chose to take a more playful and untraditional approach to the imagery so I used the most recognizable symbol in the story, the white whale. This contrasts the serious tone of the book while also appealing to kids as well as the young-at-heart. Most covers involve a whale and Captain Ahab on a small whaling boat, but I decided to emphasize the size of the whale through the entirety of the cover. I created the cover in a grayish-white color to represent the flesh of the whale and I placed eyes on the cover in such a way that assumes the face of the whale. When the book is opened it appears as if the whale opens it’s mouthready to consume the reader with it’s immense literature content.',
      'The Great Expectations cover was designed with the concept of time. It represents how time deteriorates the lives of the characters in the book. I designed the book cover with a Victorian pattern and mantle clock that is stuck at ten minutes past ten, a significant time referenced in the story.',
      '',
      'DC comics inspired Wallpaper created for Samsung Galaxy S3',
      'DC comics inspired Wallpaper created for Samsung Galaxy S3',
      'DC comics inspired Wallpaper created for Samsung Galaxy S3',
      'DC comics inspired Wallpaper created for Samsung Galaxy S3',
      'DC comics inspired Wallpaper created for Samsung Galaxy S3',
    ]
  end
end