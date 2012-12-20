require 'spec_helper'

describe "githubs/new" do
  before(:each) do
    assign(:github, stub_model(Github,
      :github_url => "",
      :User => nil
    ).as_new_record)
  end

  it "renders new github form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => githubs_path, :method => "post" do
      assert_select "input#github_github_url", :name => "github[github_url]"
      assert_select "input#github_User", :name => "github[User]"
    end
  end
end
