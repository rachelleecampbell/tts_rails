class HomeController < ApplicationController
  def index
  
    right_now = Time.now
    @current_time = right_now.stamp_like("Feb 23 2015, 02:00 PM")
    
# remember to finish the string with .html_safe
      @greet_message = case right_now.hour
      when 5..11
        "Good Morning! <i class='fa fa-bicycle'></i>".html_safe
      when 12..15
        "Good Afternoon! <i class='fa fa-beer'></i>".html_safe
      when 16..19
        "Good Evening! <i class='fa fa-beer'></i>".html_safe
      when 20..23, 0..4
        "Good Night! Early to bed early to shred <i class='fa fa-bed'></i>".html_safe
      end 
  end
end


