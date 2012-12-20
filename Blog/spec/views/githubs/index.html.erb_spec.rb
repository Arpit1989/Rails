require 'spec_helper'

describe "githubs/index" do
  before(:each) do
    assign(:githubs, [
      stub_model(Github,
        :User => nil,
        :GithubUrl => "Github Url",
        :title => "Title",
        :Description => "MyText"
      ),
      stub_model(Github,
        :User => nil,
        :GithubUrl => "Github Url",
        :title => "Title",
        :Description => "MyText"
      )
    ])
  end

  it "renders a list of githubs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Github Url".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
