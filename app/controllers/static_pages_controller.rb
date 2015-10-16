class StaticPagesController < ApplicationController
  def home
    @title = "Home"
    @posts_render =  Post.feed3
  end

  def inspiration
    @title ="Inspiration"
  end
  
  def about
    @title = "About"
  end

  def blog
    @title = "Blog"
  end
  
  # def portfolio
  #   @title = "Portfolio"
    
  #   @images = %w[
  #   Logos/Flyte_logo.jpg
  #   Logos/purls&knit_logo.jpg
  #   Logos/BlackEpiphany-display.png
  #   Logos/EmpireFence-display.png
  #   web_design/PIAT-display.png
  #   posters/Observations-display.png
  #   posters/Worldview-display.png
  #   posters/AlmostMaine-display.png
  #   posters/Regeneration-display.png
  #   posters/MobyDick-Book-display.png
  #   posters/GreatExpectations-Book-display.png
  #   phone_wallpapers/DCWallpapers-display.png
  #   ]
  #   gon.imageName = @imageName = 
  #   [
  #     'Flyte',
  #     'Purls & knit',
  #     'The Black Epiphany',
  #     'Empire Fence Co.',
  #     'PIAT Interface',
  #     'Observations',
  #     'Worldview Lecture Poster',
  #     'Almost Maine',
  #     'Regeneration',
  #     'Moby Dick',
  #     'Great Expectations',
  #     'DC Comics Wallpapers',
  #   ]
  #   gon.imageText = @imageText = 
  #   [
  #     'The Flyte logo was a concept designed for a youth group based in New York.',
  #     'Purls & knit is knitting and DIY blog for a very talented and creative realitive of mine. The logo was designed for use on the blog, lotion bottles and various other projects they have created.',
  #     'Black Epiphany is an organization based in New Orleans, Louisiana. It is a movement created to help African Americans in lower income neighborhoods overcome and reach beyond the struggles they face in their communities. It’s member base is made up of young adults. The founder of this organization asked me to design a logo to visualize his idea. I worked with his concept and created the design displayed here. ',
  #     'Empire Fence Co, is a fencing company based in Tulsa, Oklahoma. The goal of the design was to create a new look for the company that would make them appear more modern while also better representing their company name. The redesign of the logo features a crown with a chain–linked fence pattern which effectively represents the brand in the icon alone, but it’s also coupled with a classic typeface to further emphasize the mood.',
  #     'PIAT is a codename for the application a co-worker and I were developing together. The project was created to provide an interface that would allow members of the load integration team to handle their day to day tasks from one convenient location. It was designed to allow the team to generate statements for loading files into a SQL database, adding new file types to a database, generating emails to notify other members of the organization when a new file has been added. These tasks normally take a while, but the app simplifies it to just a few clicks. The visual design uses simple shapes and solid colors while the architectural design is built in a modular way. If necessary each portion of the app can be mixed and matched as necessary for any page layout.',
  #     'Observations was a poster created for a student senior art show. The design focuses on the students and their individual sense of style. The design concept shows the audience a very close and personal image of the artists as if they were icons on a stain glass window.',
  #     'This poster was created for a lecture held on the Oral Roberts University campus. The design was inspired by one of the lectures in the series, Stewardship of the Mind: Thinking like Christians. The design uses icons that depicts a compassionate mind versus a more law conscious mind.',
  #     'Almost Maine, is a play that deals with the concept of love in its various forms. The promotional designs were created for the performance at Oral Roberts University. I utilized two significant symbols from the play, night sky and a park bench as my inspiration for this piece. The design contains a heart–shaped constellation of stars in the sky surrounding a “honey” moon coupled with a park bench facing toward the sky.',
  #     'Regeneration, a dance performance held at Oral Roberts University needed both print and digital media created to promote the show promotional material designed. The team provided images they wanted utilized in the design. I chose an image that reflected the essence of the performance title. I knew immediately that I wanted to design this in Photoshop and use light effects. Regeneration is a concept of internal and spiritual metamorphosis into new life. The design was created to represent this concept externally through the movement of the dancers, the use of light and plants, things that represent new life.',
  #     'Moby Dick, is famously known for involving a white whale. I chose to take a playful and minimalistic design approach for the book cover. The most recognizable symbol of the story is the white whale and my design contrasts the serious tone of the book. Most cover designs involve a whale and Captain Ahab on a small whaling boat, but I’ve emphasized the size of the whale through the entirety of the cover. Using a grayish-white color to represent flesh and  placing eyes on the cover the book assumes the face of the white whale. When the book is opened it’s as if the whale’s mouth was opened adding to the playful design.',
  #     'The Great Expectations cover was designed based on the concept of time and how it affects the characters of the story. I designed the book cover with a Victorian pattern and mantle clock that is stuck at ten minutes past ten, a significant time referenced in the story.',
  #     'I wanted more options for my Samsung galaxy S3 phone, because I was tired of the default flowers and mountain scape wallpapers available by default. I created a series of DC comic inspired wallpapers using motifs and symbols of some famous heroes and villains.',
  #   ]
  # end
  
end