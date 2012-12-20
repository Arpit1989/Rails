require 'spec_helper'

describe "herokus/edit" do
  before(:each) do
    @heroku = assign(:heroku, stub_model(Heroku,
      :heroku_url => "MyString",
      :Project => nil
    ))
  end

  it "renders the edit heroku form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => herokus_path(@heroku), :method => "post" do
      assert_select "input#heroku_heroku_url", :name => "heroku[heroku_url]"
      assert_select "input#heroku_Project", :name => "heroku[Project]"
    end
  end
end
