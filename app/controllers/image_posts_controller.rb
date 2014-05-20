class ImagePostsController < ApplicationController
  before_action :set_image_post, only: [:show, :edit, :update, :destroy]

  # GET /image_posts
  # GET /image_posts.json
  def index
    @image_posts = ImagePost.all
  end

  # GET /image_posts/1
  # GET /image_posts/1.json
  def show
  end

  # GET /image_posts/new
  def new
    @image_post = ImagePost.new
  end

  # GET /image_posts/1/edit
  def edit
  end

  # POST /image_posts
  # POST /image_posts.json
  def create
    @image_post = ImagePost.new(image_post_params)

    respond_to do |format|
      if @image_post.save
        format.html { redirect_to @image_post, notice: 'Image post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @image_post }
      else
        format.html { render action: 'new' }
        format.json { render json: @image_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_posts/1
  # PATCH/PUT /image_posts/1.json
  def update
    respond_to do |format|
      if @image_post.update(image_post_params)
        format.html { redirect_to @image_post, notice: 'Image post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @image_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_posts/1
  # DELETE /image_posts/1.json
  def destroy
    @image_post.destroy
    respond_to do |format|
      format.html { redirect_to image_posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_post
      @image_post = ImagePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_post_params
      params[:image_post]
    end
end
