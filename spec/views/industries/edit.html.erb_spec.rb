require 'spec_helper'

describe "industries/edit" do
  before(:each) do
    @industry = assign(:industry, stub_model(Industry,
      :name => "MyString",
      :description => "MyText",
      :pnetz_solution => "MyText"
    ))
  end

  it "renders the edit industry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => industries_path(@industry), :method => "post" do
      assert_select "input#industry_name", :name => "industry[name]"
      assert_select "textarea#industry_description", :name => "industry[description]"
      assert_select "textarea#industry_pnetz_solution", :name => "industry[pnetz_solution]"
    end
  end
end
