require 'spec_helper'

describe "neighborhoods/index" do
  before(:each) do
    assign(:neighborhoods, [
      stub_model(Neighborhood),
      stub_model(Neighborhood)
    ])
  end

  it "renders a list of neighborhoods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
