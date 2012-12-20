require 'spec_helper'

describe "blog_urls/index" do
  before(:each) do
    assign(:blog_urls, [
      stub_model(BlogUrl,
        :blog_url => "Blog Url",
        :User => nil
      ),
      stub_model(BlogUrl,
        :blog_url => "Blog Url",
        :User => nil
      )
    ])
  end

  it "renders a list of blog_urls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Blog Url".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
