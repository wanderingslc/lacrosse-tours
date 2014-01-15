class Activity < ActiveRecord::Base
  rolify
  resourcify
  belongs_to :itinerary
  attr_accessible :time, :description, :itinerary_id

end
