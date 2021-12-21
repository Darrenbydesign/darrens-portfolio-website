require 'spec_helper'

describe "image_posts/show" do
  before(:each) do
    @image_post = assign(:image_post, stub_model(ImagePost))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
