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
