class Activity < ActiveRecord::Base
  belongs_to :itinerary
  attr_accessible :time, :description, :itinerary_id

end
