require 'spec_helper'

describe "industries/show" do
  before(:each) do
    @industry = assign(:industry, stub_model(Industry,
      :name => "Name",
      :description => "MyText",
      :pnetz_solution => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
