require 'spec_helper'

describe "portfolios/index" do
  before(:each) do
    assign(:portfolios, [
      stub_model(Portfolio),
      stub_model(Portfolio)
    ])
  end

  it "renders a list of portfolios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
