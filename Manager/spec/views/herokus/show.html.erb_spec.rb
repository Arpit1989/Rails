require 'spec_helper'

describe "herokus/show" do
  before(:each) do
    @heroku = assign(:heroku, stub_model(Heroku,
      :heroku_url => "Heroku Url",
      :Project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Heroku Url/)
    rendered.should match(//)
  end
end
