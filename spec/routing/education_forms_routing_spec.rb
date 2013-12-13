require "spec_helper"

describe EducationFormsController do
  describe "routing" do

    it "routes to #index" do
      get("/education_forms").should route_to("education_forms#index")
    end

    it "routes to #new" do
      get("/education_forms/new").should route_to("education_forms#new")
    end

    it "routes to #show" do
      get("/education_forms/1").should route_to("education_forms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/education_forms/1/edit").should route_to("education_forms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/education_forms").should route_to("education_forms#create")
    end

    it "routes to #update" do
      put("/education_forms/1").should route_to("education_forms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/education_forms/1").should route_to("education_forms#destroy", :id => "1")
    end

  end
end
