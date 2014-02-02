class TourDate < ActiveRecord::Base
  attr_accessible :date, :description, :scheduled, :user_id  
  resourcify
end
