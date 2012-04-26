require 'spec_helper'

describe "cases/index" do
  before(:each) do
    assign(:cases, [
      stub_model(Case,
        :industry => "Industry",
        :size => "",
        :location => "Location",
        :email => "Email"
      ),
      stub_model(Case,
        :industry => "Industry",
        :size => "",
        :location => "Location",
        :email => "Email"
      )
    ])
  end

  it "renders a list of cases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Industry".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
