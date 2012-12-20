require 'spec_helper'

describe "Githubs" do
  describe "GET /githubs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get githubs_path
      response.status.should be(200)
    end
  end
end
