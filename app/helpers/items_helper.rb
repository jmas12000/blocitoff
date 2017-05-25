module ItemsHelper
  include ActionView::Helpers::DateHelper
  
  def remaining_time(item)
    item.expired? ? "0 days " :  "#{distance_of_time_in_words(7.days.ago, item.created_at)}"
  end    
end
