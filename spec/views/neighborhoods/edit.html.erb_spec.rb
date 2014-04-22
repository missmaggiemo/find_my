require 'spec_helper'

describe "neighborhoods/edit" do
  before(:each) do
    @neighborhood = assign(:neighborhood, stub_model(Neighborhood))
  end

  it "renders the edit neighborhood form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", neighborhood_path(@neighborhood), "post" do
    end
  end
end
