require "spec_helper"

describe NeighborhoodsController do
  describe "routing" do

    it "routes to #index" do
      get("/neighborhoods").should route_to("neighborhoods#index")
    end

    it "routes to #new" do
      get("/neighborhoods/new").should route_to("neighborhoods#new")
    end

    it "routes to #show" do
      get("/neighborhoods/1").should route_to("neighborhoods#show", :id => "1")
    end

    it "routes to #edit" do
      get("/neighborhoods/1/edit").should route_to("neighborhoods#edit", :id => "1")
    end

    it "routes to #create" do
      post("/neighborhoods").should route_to("neighborhoods#create")
    end

    it "routes to #update" do
      put("/neighborhoods/1").should route_to("neighborhoods#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/neighborhoods/1").should route_to("neighborhoods#destroy", :id => "1")
    end

  end
end
