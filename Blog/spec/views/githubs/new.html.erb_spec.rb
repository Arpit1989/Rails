require 'spec_helper'

describe "githubs/new" do
  before(:each) do
    assign(:github, stub_model(Github,
      :User => nil,
      :GithubUrl => "MyString",
      :title => "MyString",
      :Description => "MyText"
    ).as_new_record)
  end

  it "renders new github form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => githubs_path, :method => "post" do
      assert_select "input#github_User", :name => "github[User]"
      assert_select "input#github_GithubUrl", :name => "github[GithubUrl]"
      assert_select "input#github_title", :name => "github[title]"
      assert_select "textarea#github_Description", :name => "github[Description]"
    end
  end
end
