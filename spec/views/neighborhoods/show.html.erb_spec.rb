require 'spec_helper'

describe "neighborhoods/show" do
  before(:each) do
    @neighborhood = assign(:neighborhood, stub_model(Neighborhood))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
