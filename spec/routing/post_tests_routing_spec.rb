require "spec_helper"

describe PostTestsController do
  describe "routing" do

    it "routes to #index" do
      get("/post_tests").should route_to("post_tests#index")
    end

    it "routes to #new" do
      get("/post_tests/new").should route_to("post_tests#new")
    end

    it "routes to #show" do
      get("/post_tests/1").should route_to("post_tests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/post_tests/1/edit").should route_to("post_tests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/post_tests").should route_to("post_tests#create")
    end

    it "routes to #update" do
      put("/post_tests/1").should route_to("post_tests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/post_tests/1").should route_to("post_tests#destroy", :id => "1")
    end

  end
end
