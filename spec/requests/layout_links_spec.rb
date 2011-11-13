require 'spec_helper'

describe "LayoutLinks" do
  describe "GET /layout_links" do
    it "works! (now write some real specs)" do
      #get layout_links_path
    end
  end   
  it "should a sign up page at '/register" do
    get '/register'
    response.should have_selector("title", :content=> "Create New Staff Member")
  end
end
