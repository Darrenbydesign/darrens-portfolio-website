require "spec_helper"

describe ImagePostsController do
  describe "routing" do

    it "routes to #index" do
      get("/image_posts").should route_to("image_posts#index")
    end

    it "routes to #new" do
      get("/image_posts/new").should route_to("image_posts#new")
    end

    it "routes to #show" do
      get("/image_posts/1").should route_to("image_posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/image_posts/1/edit").should route_to("image_posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/image_posts").should route_to("image_posts#create")
    end

    it "routes to #update" do
      put("/image_posts/1").should route_to("image_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/image_posts/1").should route_to("image_posts#destroy", :id => "1")
    end

  end
end
