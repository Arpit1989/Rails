require 'spec_helper'

describe "herokus/index" do
  before(:each) do
    assign(:herokus, [
      stub_model(Heroku,
        :heroku_url => "Heroku Url",
        :Project => nil
      ),
      stub_model(Heroku,
        :heroku_url => "Heroku Url",
        :Project => nil
      )
    ])
  end

  it "renders a list of herokus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Heroku Url".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
