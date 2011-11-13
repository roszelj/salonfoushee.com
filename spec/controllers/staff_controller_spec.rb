require 'spec_helper'

describe StaffController do
  render_views

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    it "should have the right title" do
      get 'new'
      response.should have_selector("title", :content=> "Create New Staff Member")
    end
  end
end
