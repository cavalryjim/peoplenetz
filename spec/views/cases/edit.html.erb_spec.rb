require 'spec_helper'

describe "cases/edit" do
  before(:each) do
    @case = assign(:case, stub_model(Case,
      :industry => "MyString",
      :size => "",
      :location => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit case form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cases_path(@case), :method => "post" do
      assert_select "input#case_industry", :name => "case[industry]"
      assert_select "input#case_size", :name => "case[size]"
      assert_select "input#case_location", :name => "case[location]"
      assert_select "input#case_email", :name => "case[email]"
    end
  end
end
