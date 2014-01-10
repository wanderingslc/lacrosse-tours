class Itinerary < ActiveRecord::Base
  attr_accessible :date, :description, :activities_attributes
  has_many :activities
  accepts_nested_attributes_for :activities, :reject_if => :all_blank, :allow_destroy => true
end
