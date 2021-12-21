require 'spec_helper'

describe "image_posts/edit" do
  before(:each) do
    @image_post = assign(:image_post, stub_model(ImagePost))
  end

  it "renders the edit image_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", image_post_path(@image_post), "post" do
    end
  end
end
