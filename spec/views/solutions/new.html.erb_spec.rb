require 'spec_helper'

describe "solutions/new" do
  before(:each) do
    assign(:solution, stub_model(Solution,
      :name => "MyString",
      :description => "MyText",
      :pnetz_solution => "MyText"
    ).as_new_record)
  end

  it "renders new solution form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => solutions_path, :method => "post" do
      assert_select "input#solution_name", :name => "solution[name]"
      assert_select "textarea#solution_description", :name => "solution[description]"
      assert_select "textarea#solution_pnetz_solution", :name => "solution[pnetz_solution]"
    end
  end
end
