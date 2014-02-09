class ItinerariesController < ApplicationController
load_and_authorize_resource #:nested => :activity


  def index 
    @itineraries = Itinerary.all
  end

  def show 
    @itinerary = Itinerary.find(params[:id])
  end

  def new 
    @itinerary = Itinerary.new 
    1.times do 
      activity = @itinerary.activities.build
    end
  end

  def create 
    @itinerary = Itinerary.new(params[:itinerary])
    if @itinerary.save
      redirect_to itineraries_path, notice: "Successfully  created itinerary"
    else 
      render :new 
    end
  end

  def edit 
     @itinerary = Itinerary.find(params[:id])

  end

  def update 
      @itinerary = Itinerary.find(params[:id])
      if @itinerary.update_attributes(params[:itinerary])
        redirect_to @itinerary, notice: "Successfully updated itinerary"
      else 
        render :edit
      end
  end

  def destroy 
    @itinerary = Itinerary.find(params[:id])
    @itinerary.destroy
    redirect_to itineries_url, notice: "Successfully deleted itinerary"
  end
end
