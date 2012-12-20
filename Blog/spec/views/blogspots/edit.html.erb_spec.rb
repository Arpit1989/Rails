require 'spec_helper'

describe "blogspots/edit" do
  before(:each) do
    @blogspot = assign(:blogspot, stub_model(Blogspot,
      :name => "MyString",
      :title => "MyString",
      :content => "MyText",
      :User => nil
    ))
  end

  it "renders the edit blogspot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blogspots_path(@blogspot), :method => "post" do
      assert_select "input#blogspot_name", :name => "blogspot[name]"
      assert_select "input#blogspot_title", :name => "blogspot[title]"
      assert_select "textarea#blogspot_content", :name => "blogspot[content]"
      assert_select "input#blogspot_User", :name => "blogspot[User]"
    end
  end
end
