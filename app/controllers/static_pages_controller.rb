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
  
end