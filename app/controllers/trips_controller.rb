class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    trip = Trip.new(trip_params)
    if trip.save
      redirect_to trips_path
    else
      render :new
    end
  end

  def show
    @locations = Location.all
  end


  private

  def trip_params
    params.require(:trip).permit(:date, :city, :completed)
  end
end
