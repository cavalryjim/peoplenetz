require 'spec_helper'

describe "solutions/index" do
  before(:each) do
    assign(:solutions, [
      stub_model(Solution,
        :name => "Name",
        :description => "MyText",
        :pnetz_solution => "MyText"
      ),
      stub_model(Solution,
        :name => "Name",
        :description => "MyText",
        :pnetz_solution => "MyText"
      )
    ])
  end

  it "renders a list of solutions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
