require 'spec_helper'

describe "neighborhoods/new" do
  before(:each) do
    assign(:neighborhood, stub_model(Neighborhood).as_new_record)
  end

  it "renders new neighborhood form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", neighborhoods_path, "post" do
    end
  end
end
