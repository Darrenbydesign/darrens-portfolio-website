require 'spec_helper'

describe StaticPagesController do
  before(:each) do
    @base_title = "Darren Sorrels"
  end
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector
      ("title", :content => @base_title + " | Home")
    end
    it "should have a Home page at '/'" do
      get '/'
      response.should have_selector('title', :content => "Home")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
    get 'home'
    response.should have_selector
      ("title", :content => @base_title + " | About")
    end
    it "should have a Home page at '/'" do
      get '/about'
      response.should have_selector('title', :content => "About")
    end
  end

  describe "GET 'blog'" do
    it "returns http success" do
      get 'blog'
      response.should be_success
    end
    it "should have the right title" do
    get 'home'
    response.should have_selector
      ("title", :content => @base_title + " | Blog")
    end
    it "should have a Home page at '/'" do
      get '/blog'
      response.should have_selector('title', :content => "blog")
    end
  end

  describe "GET 'portfolio'" do
    it "returns http success" do
      get 'portfolio'
      response.should be_success
    end
    it "should have the right title" do
    get 'home'
    response.should have_selector
      ("title", :content => @base_title + " | Portfolio")
    end
    it "should have a Home page at '/'" do
      get '/portfolio'
      response.should have_selector('title', :content => "portfolio")
    end
  end
  
end
