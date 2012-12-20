require 'spec_helper'

describe "githubs/edit" do
  before(:each) do
    @github = assign(:github, stub_model(Github,
      :github_url => "",
      :User => nil
    ))
  end

  it "renders the edit github form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => githubs_path(@github), :method => "post" do
      assert_select "input#github_github_url", :name => "github[github_url]"
      assert_select "input#github_User", :name => "github[User]"
    end
  end
end
