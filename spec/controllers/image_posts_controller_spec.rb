require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ImagePostsController do

  # This should return the minimal set of attributes required to create a valid
  # ImagePost. As you add validations to ImagePost, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ImagePostsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all image_posts as @image_posts" do
      image_post = ImagePost.create! valid_attributes
      get :index, {}, valid_session
      assigns(:image_posts).should eq([image_post])
    end
  end

  describe "GET show" do
    it "assigns the requested image_post as @image_post" do
      image_post = ImagePost.create! valid_attributes
      get :show, {:id => image_post.to_param}, valid_session
      assigns(:image_post).should eq(image_post)
    end
  end

  describe "GET new" do
    it "assigns a new image_post as @image_post" do
      get :new, {}, valid_session
      assigns(:image_post).should be_a_new(ImagePost)
    end
  end

  describe "GET edit" do
    it "assigns the requested image_post as @image_post" do
      image_post = ImagePost.create! valid_attributes
      get :edit, {:id => image_post.to_param}, valid_session
      assigns(:image_post).should eq(image_post)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ImagePost" do
        expect {
          post :create, {:image_post => valid_attributes}, valid_session
        }.to change(ImagePost, :count).by(1)
      end

      it "assigns a newly created image_post as @image_post" do
        post :create, {:image_post => valid_attributes}, valid_session
        assigns(:image_post).should be_a(ImagePost)
        assigns(:image_post).should be_persisted
      end

      it "redirects to the created image_post" do
        post :create, {:image_post => valid_attributes}, valid_session
        response.should redirect_to(ImagePost.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved image_post as @image_post" do
        # Trigger the behavior that occurs when invalid params are submitted
        ImagePost.any_instance.stub(:save).and_return(false)
        post :create, {:image_post => {  }}, valid_session
        assigns(:image_post).should be_a_new(ImagePost)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ImagePost.any_instance.stub(:save).and_return(false)
        post :create, {:image_post => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested image_post" do
        image_post = ImagePost.create! valid_attributes
        # Assuming there are no other image_posts in the database, this
        # specifies that the ImagePost created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ImagePost.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => image_post.to_param, :image_post => { "these" => "params" }}, valid_session
      end

      it "assigns the requested image_post as @image_post" do
        image_post = ImagePost.create! valid_attributes
        put :update, {:id => image_post.to_param, :image_post => valid_attributes}, valid_session
        assigns(:image_post).should eq(image_post)
      end

      it "redirects to the image_post" do
        image_post = ImagePost.create! valid_attributes
        put :update, {:id => image_post.to_param, :image_post => valid_attributes}, valid_session
        response.should redirect_to(image_post)
      end
    end

    describe "with invalid params" do
      it "assigns the image_post as @image_post" do
        image_post = ImagePost.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ImagePost.any_instance.stub(:save).and_return(false)
        put :update, {:id => image_post.to_param, :image_post => {  }}, valid_session
        assigns(:image_post).should eq(image_post)
      end

      it "re-renders the 'edit' template" do
        image_post = ImagePost.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ImagePost.any_instance.stub(:save).and_return(false)
        put :update, {:id => image_post.to_param, :image_post => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested image_post" do
      image_post = ImagePost.create! valid_attributes
      expect {
        delete :destroy, {:id => image_post.to_param}, valid_session
      }.to change(ImagePost, :count).by(-1)
    end

    it "redirects to the image_posts list" do
      image_post = ImagePost.create! valid_attributes
      delete :destroy, {:id => image_post.to_param}, valid_session
      response.should redirect_to(image_posts_url)
    end
  end

end