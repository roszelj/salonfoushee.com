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
  it "should have the right amount of links on the layout" do
     visit root_path
     click_link "About Us"
     #response.should have_selector("title", :content=> "About Us")
  end  
  
  describe "when not signed in" do
     it "should have a signin link" do
        visit root_path
        response.should have_selector("a",:href=>signin_path, :content => "Sign in")
     end
  end   
  
  describe "when signed in" do 
     before(:each) do
        @user = Factory(:user)
        visit signin_path
        fill_in :email,    :with => @user.email
        fill_in :password, :with => @user.password 
        click_button
     end            
               
  
     describe "should have a signout link" do
       visit root_path
       response.should have_selector("a", :href => signout_path, :content => "Sign out")    
     end  
     
     it "should have a profile link" do
        visit root_path
        response.should have_selector("a", :href => user_path(@user), :content => "Profile")
        
     end 
  end
end
