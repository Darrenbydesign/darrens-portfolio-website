require 'spec_helper'

describe "images/new" do
  before(:each) do
    assign(:image, stub_model(Image,
      :image_name => "MyString",
      :filepath => "MyString"
    ).as_new_record)
  end

  it "renders new image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", images_path, "post" do
      assert_select "input#image_image_name[name=?]", "image[image_name]"
      assert_select "input#image_filepath[name=?]", "image[filepath]"
    end
  end
end
