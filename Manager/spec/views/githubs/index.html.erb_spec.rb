require 'spec_helper'

describe "githubs/index" do
  before(:each) do
    assign(:githubs, [
      stub_model(Github,
        :github_url => "",
        :User => nil
      ),
      stub_model(Github,
        :github_url => "",
        :User => nil
      )
    ])
  end

  it "renders a list of githubs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
