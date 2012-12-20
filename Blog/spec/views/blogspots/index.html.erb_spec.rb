require 'spec_helper'

describe "blogspots/index" do
  before(:each) do
    assign(:blogspots, [
      stub_model(Blogspot,
        :name => "Name",
        :title => "Title",
        :content => "MyText",
        :User => nil
      ),
      stub_model(Blogspot,
        :name => "Name",
        :title => "Title",
        :content => "MyText",
        :User => nil
      )
    ])
  end

  it "renders a list of blogspots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
