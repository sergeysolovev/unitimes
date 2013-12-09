require "spec_helper"

describe EducationProgramsController do
  describe "routing" do

    it "routes to #index" do
      get("/education_programs").should route_to("education_programs#index")
    end

    it "routes to #new" do
      get("/education_programs/new").should route_to("education_programs#new")
    end

    it "routes to #show" do
      get("/education_programs/1").should route_to("education_programs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/education_programs/1/edit").should route_to("education_programs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/education_programs").should route_to("education_programs#create")
    end

    it "routes to #update" do
      put("/education_programs/1").should route_to("education_programs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/education_programs/1").should route_to("education_programs#destroy", :id => "1")
    end

  end
end
