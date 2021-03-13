class Api::V1::TripsController < Api::V1::BaseController

  def index
    trip = Trip.includes(trip_courses: [:transportation_to_next]).all.limit(5)
    render json: {trip: trip}, include: [trip_courses: {include: [:transportation_to_next]}]
  end

end