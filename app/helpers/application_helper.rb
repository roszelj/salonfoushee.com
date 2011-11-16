module ApplicationHelper   
  def logo
    logo = "/images/salon-foushee-logo.png"
  end
  def title
    base_title = "Salon Foushee & Spa Foushee"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
