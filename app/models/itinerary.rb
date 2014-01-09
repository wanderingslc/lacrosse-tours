class Itinerary < ActiveRecord::Base
  attr_accessible :date, :event_times_attributes
  has_many :event_times 
  accepts_nested_attributes_for :event_times, allow_destroy: true
end
