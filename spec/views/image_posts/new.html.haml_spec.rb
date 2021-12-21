require 'spec_helper'

describe "image_posts/new" do
  before(:each) do
    assign(:image_post, stub_model(ImagePost).as_new_record)
  end

  it "renders new image_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", image_posts_path, "post" do
    end
  end
end
