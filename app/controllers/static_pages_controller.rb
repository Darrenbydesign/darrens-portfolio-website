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

    # @lightbox =
    # '<div class="lightbox">' +
    #   '<button class="btn-tiny close">' + "Close Me" + '</button>' +
    #   '<div class="lb-content">' +
    #       '<div class="lb-nav">' +
    #         '<button class="lb-prev btn-norm"> < </button>' +
    #         '<button class="lb-next btn-norm"> > </button>' +
    #       '</div>' +
    #       '<figure>' +
    #         '<figcaption>' +
    #         '<h3>' + 'gon.image_name' + '</h3>' +
    #         '<p>' + 'gon.image_text' + '</p>' +
    #         '</figcaption>' +
    #       '</figure>' +
    #   '</div>' +
    # '</div>'
    # gon.lightbox = @lightbox
    
    @imageName = %w[
      Flyte The Black EpiphanyEmpire Fence co. Purls & knit Almost Maine 
      The Art of Murder Observations Regeneration]
    gon.image_name = @imageName

    @imageText = "testing text 123 Lorem ipsum Occaecat ut occaecat non Ut."
    gon.image_text = @imageText
  end
end
