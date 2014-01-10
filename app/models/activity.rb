class Activity < ActiveRecord::Base
  belongs_to :itinerary
  attr_accessible :description, :time
end
