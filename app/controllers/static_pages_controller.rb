class StaticPagesController < ApplicationController
  #caches_page :home, :bus, :itinerary, :tour, :pricing, :stadium, :about, :contact, :sign_up
  layout 'application' 
  def home
   # @scheduled_tour_date = TourDate.where("scheduled == true", params[:tour_dates])
   # @pending_tour_date = TourDate.where("scheduled == false", params[:tour_date])
    @tour_dates = TourDate.all
  end

  def bus
  end

  def itinerary
  end

  def tour
  end

  def pricing
  end

  def stadium
  end

  def about
  end

  def contact
  end

  def sign_up
  end

  def googlee78ed3070a14e045
  end
  
end
