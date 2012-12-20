require "spec_helper"

describe BlogspotsController do
  describe "routing" do

    it "routes to #index" do
      get("/blogspots").should route_to("blogspots#index")
    end

    it "routes to #new" do
      get("/blogspots/new").should route_to("blogspots#new")
    end

    it "routes to #show" do
      get("/blogspots/1").should route_to("blogspots#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blogspots/1/edit").should route_to("blogspots#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blogspots").should route_to("blogspots#create")
    end

    it "routes to #update" do
      put("/blogspots/1").should route_to("blogspots#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blogspots/1").should route_to("blogspots#destroy", :id => "1")
    end

  end
end
