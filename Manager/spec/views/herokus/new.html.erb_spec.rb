require 'spec_helper'

describe "herokus/new" do
  before(:each) do
    assign(:heroku, stub_model(Heroku,
      :heroku_url => "MyString",
      :Project => nil
    ).as_new_record)
  end

  it "renders new heroku form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => herokus_path, :method => "post" do
      assert_select "input#heroku_heroku_url", :name => "heroku[heroku_url]"
      assert_select "input#heroku_Project", :name => "heroku[Project]"
    end
  end
end
