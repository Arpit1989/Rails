require "spec_helper"

describe BlogUrlsController do
  describe "routing" do

    it "routes to #index" do
      get("/blog_urls").should route_to("blog_urls#index")
    end

    it "routes to #new" do
      get("/blog_urls/new").should route_to("blog_urls#new")
    end

    it "routes to #show" do
      get("/blog_urls/1").should route_to("blog_urls#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blog_urls/1/edit").should route_to("blog_urls#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blog_urls").should route_to("blog_urls#create")
    end

    it "routes to #update" do
      put("/blog_urls/1").should route_to("blog_urls#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blog_urls/1").should route_to("blog_urls#destroy", :id => "1")
    end

  end
end
