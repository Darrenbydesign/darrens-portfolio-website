require 'spec_helper'

describe "image_posts/index" do
  before(:each) do
    assign(:image_posts, [
      stub_model(ImagePost),
      stub_model(ImagePost)
    ])
  end

  it "renders a list of image_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
