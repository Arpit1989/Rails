require "spec_helper"

describe HerokusController do
  describe "routing" do

    it "routes to #index" do
      get("/herokus").should route_to("herokus#index")
    end

    it "routes to #new" do
      get("/herokus/new").should route_to("herokus#new")
    end

    it "routes to #show" do
      get("/herokus/1").should route_to("herokus#show", :id => "1")
    end

    it "routes to #edit" do
      get("/herokus/1/edit").should route_to("herokus#edit", :id => "1")
    end

    it "routes to #create" do
      post("/herokus").should route_to("herokus#create")
    end

    it "routes to #update" do
      put("/herokus/1").should route_to("herokus#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/herokus/1").should route_to("herokus#destroy", :id => "1")
    end

  end
end
