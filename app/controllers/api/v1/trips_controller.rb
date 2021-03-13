class Api::V1::TripsController < Api::V1::BaseController

  def index
    trips = Trip.includes(trip_courses: [:transportation_to_next]).all.limit(5)
    render json: {trips: trips}, include: [trip_courses: {include: [:transportation_to_next]}]
  end

  def show
    trip = Trip.includes(trip_courses: [:transportation_to_next]).find(params[:id])
    render json: {trip: trip}, include: [trip_courses: {include: [:transportation_to_next]}]
  end

end