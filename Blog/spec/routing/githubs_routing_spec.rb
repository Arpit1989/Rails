require "spec_helper"

describe GithubsController do
  describe "routing" do

    it "routes to #index" do
      get("/githubs").should route_to("githubs#index")
    end

    it "routes to #new" do
      get("/githubs/new").should route_to("githubs#new")
    end

    it "routes to #show" do
      get("/githubs/1").should route_to("githubs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/githubs/1/edit").should route_to("githubs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/githubs").should route_to("githubs#create")
    end

    it "routes to #update" do
      put("/githubs/1").should route_to("githubs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/githubs/1").should route_to("githubs#destroy", :id => "1")
    end

  end
end
