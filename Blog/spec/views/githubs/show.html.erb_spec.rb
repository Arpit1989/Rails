require 'spec_helper'

describe "githubs/show" do
  before(:each) do
    @github = assign(:github, stub_model(Github,
      :User => nil,
      :GithubUrl => "Github Url",
      :title => "Title",
      :Description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Github Url/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
