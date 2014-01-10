class ItinerariesController < ApplicationController
  def index 
    @itineray = Itineraries.all
  end

  def show 
    @interary = Itineraries.find(params[:id])
  end

  def new 
    @itinerary = Itinerary.new 
  end

  def create 
    @itinerary = Itinerary.new(params[:survey])
    if @itinerary.save
      redirect_to @itinerary, notice: "Successfulleraild  created itinerary"
    else 
      render :new 
    end
  end

  def edit 
     @itinerary = Itinerary.find(params[:id])
   end

  def update 
      @itinerary = Itinerary.find(params[:id])
      if @itinerary.update_attributes(params[:survey])
        redirect_to @itinerary, notice: "Successfully updated itinerary"
      else 
        render :edit
      end
  end

  def destroy 
    @itinerary = Itinerary.find(params[:id])
    @itinerary.destroy
    redirect_to itineries_url, notice: "Successfully destroyed itinerary"
  end
end
