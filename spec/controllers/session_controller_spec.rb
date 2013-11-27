require 'spec_helper'

describe SessionController do

  describe "GET 'list'" do
    it "returns http success" do
      get 'list'
      response.should be_success
    end
  end

  describe "GET 'groups'" do
    it "returns http success" do
      get 'groups'
      response.should be_success
    end
  end

  describe "GET 'tests'" do
    it "returns http success" do
      get 'tests'
      response.should be_success
    end
  end

  describe "GET 'timetable'" do
    it "returns http success" do
      get 'timetable'
      response.should be_success
    end
  end

end
