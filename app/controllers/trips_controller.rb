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

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    trip = Trip.find(params[:id])
    if trip.update(trip_params)
      redirect_to trips_path
    else
      render :edit
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:date, :city, :completed)
  end
end
