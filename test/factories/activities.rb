# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :activity do
    time "MyString"
    description "MyString"
    itinerary nil
  end
end
