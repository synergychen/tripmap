class LocationsController < ApplicationController
  def new
    @trip = Trip.find(params[:trip_id])
    @location = @trip.locations.new
  end

  def create
    trip = Trip.find(params[:trip_id])
    location = trip.locations.new(location_params)
    if location.save
      redirect_to trip_path(trip)
    else
      render :new
    end
  end

  def edit
    @trip = Trip.find(params[:trip_id])
    @location = @trip.locations.find(params[:id])
  end

  def update
    trip = Trip.find(params[:trip_id])
    location = trip.locations.find(params[:id])
    if location.update(location_params)
      redirect_to trip_path(trip)
    else
      render :edit
    end
  end

  private

  def location_params
    params.require(:location).permit(
      :location,
      :start_time,
      :end_time,
      :transportation_mode,
      :transportation_time
    )
  end
end
