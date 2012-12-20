require 'spec_helper'

describe "blog_urls/show" do
  before(:each) do
    @blog_url = assign(:blog_url, stub_model(BlogUrl,
      :blog_url => "Blog Url",
      :User => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Blog Url/)
    rendered.should match(//)
  end
end
