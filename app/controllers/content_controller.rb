class ContentController < ApplicationController
  def home
    @title = "Paul Mitchell Focus Salon Located in Littleton Colorado"
  end

  def staff
    @title = "Staff"
  end

  def careers
    @title = "Careers"
  end

  def login
    @title = "Login"
  end   
  
  def aboutus
    @title = "About Us"
  end

end
