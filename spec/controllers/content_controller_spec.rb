require 'spec_helper'

describe ContentController do
    render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'staff'" do
    it "should be successful" do
      get 'staff'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content=> "Paul Mitchell Focus Salon Located in Littleton Colorado")
    end
  end

  describe "GET 'careers'" do
    it "should be successful" do
      get 'careers'
      response.should be_success
    end
  end

  describe "GET 'login'" do
    it "should be successful" do
      get 'login'
      response.should be_success
    end
  end
  
  describe "GET 'aboutus'" do
    it "should be successful" do
      get 'aboutus'
      response.should be_success
    end
  end

end
