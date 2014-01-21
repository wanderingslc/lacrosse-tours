class TourDatesController < ApplicationController
  load_and_authorize_resource

  def index 
    @tour_dates = TourDate.all
  end

  def show
    @tour_date = TourDate.find(params[:id])
  end

  def new
    @tour_date = TourDate.new
  end

  def create
    @tour_date = TourDate.new(params[:tour_date])
    if @tour_date.save
      redirect_to root_path, notice: "Successfully created Tour Date"
    else
      render :new
    end
  end

  def edit
    @tour_date = TourDate.find(params[:id])
  end

  def update
    @tour_date = TourDate.find(params[id])
    if @tour_date.update_attributes(params[:tour_date])
      redirect_to @tour_date, notice: "Successfully updated Tour Date"
    else
      render :edit
    end
  end

  def destroy
    @tour_date = TourDate.find(params[:id])
    @tour_date.destroy
    redirect_to root_path, notice: "Successfully deleted Tour Date"
  end
end
