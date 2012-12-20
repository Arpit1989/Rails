require 'spec_helper'

describe "blogspots/show" do
  before(:each) do
    @blogspot = assign(:blogspot, stub_model(Blogspot,
      :name => "Name",
      :title => "Title",
      :content => "MyText",
      :User => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
