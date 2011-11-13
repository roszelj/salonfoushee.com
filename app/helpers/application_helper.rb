module ApplicationHelper
  def title
    base_title = "Salon Foushee & Spa Foushee"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
