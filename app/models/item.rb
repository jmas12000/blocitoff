class Item < ActiveRecord::Base
  belongs_to :user
  
  def expired?
    time_remaining = (created_at - 7.days.ago)
    time_remaining <= 0 ? true : false
  end
end
