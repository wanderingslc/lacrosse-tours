class Activity < ActiveRecord::Base
  resourcify
  belongs_to :itinerary
  attr_accessible :time, :description, :itinerary_id

end
