require 'spec_helper'

describe "blog_urls/edit" do
  before(:each) do
    @blog_url = assign(:blog_url, stub_model(BlogUrl,
      :blog_url => "MyString",
      :User => nil
    ))
  end

  it "renders the edit blog_url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blog_urls_path(@blog_url), :method => "post" do
      assert_select "input#blog_url_blog_url", :name => "blog_url[blog_url]"
      assert_select "input#blog_url_User", :name => "blog_url[User]"
    end
  end
end
