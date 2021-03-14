class Api::V1::TripsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token
  def index
    trips = Trip.includes(:transportations, trip_courses: [:transportation_to_next]).all.limit(10)
    render json: {trips: trips}, include: [:transportations, trip_courses: {include: [:transportation_to_next]}]
  end

  def show
    trip = Trip.includes(:transportations, trip_courses: [:transportation_to_next]).find(params[:id])
    render json: {trip: trip}, include: [:transportations, trip_courses: {include: [:transportation_to_next]}]
  end

  def search
    p params
    trips = Trip.includes(:transportations, trip_courses: [:transportation_to_next]).where("title LIKE ?", "%#{params[:q]}%") 
    render json: {trips: trips}, include: [:transportations, trip_courses: {include: [:transportation_to_next]}]
  end

  def create
    p = params
    # trip = Trip.new(trip_params)
    # trip.save!
  end

  # private
  # def trip_params
  #   params
  # end
end