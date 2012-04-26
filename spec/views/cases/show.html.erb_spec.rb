require 'spec_helper'

describe "cases/show" do
  before(:each) do
    @case = assign(:case, stub_model(Case,
      :industry => "Industry",
      :size => "",
      :location => "Location",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Industry/)
    rendered.should match(//)
    rendered.should match(/Location/)
    rendered.should match(/Email/)
  end
end
