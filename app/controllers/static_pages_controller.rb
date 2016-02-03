class StaticPagesController < ApplicationController
  def home
    @title = "Home"
    @posts_render =  Post.feed3
  end
  
  def about
    @title = "About"
  end
  
end