class EventTime < ActiveRecord::Base
  attr_accessible :time, :itinerary_id, :events_attributes
  belongs_to :itinerary 
  has_many :events 
  accepts_nested_attributes_for :events, allow_destroy: true 
end
