# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
u = User.create(token: "token")
trip = Trip.create(user_id: u.id, main_place: "東京", budget: 50000, title: "sample title")
TripCourse.create(trip_id: trip.id, place: "東京駅", arrival_time: "10:00", day_of_trip: 1, index_in_course: 1)
TripCourse.create(trip_id: trip.id, place: "浅草", arrival_time: "12:00", day_of_trip: 1, index_in_course: 2)
TripCourse.create(trip_id: trip.id, place: "銀座", arrival_time: "18:00", day_of_trip: 1, index_in_course: 3)
TripCourse.create(trip_id: trip.id, place: "お台場", arrival_time: "9:00", day_of_trip: 2, index_in_course: 1)
TripCourse.create(trip_id: trip.id, place: "新宿", arrival_time: "13:00", day_of_trip: 2, index_in_course: 2)
TripCourse.create(trip_id: trip.id, place: "皇居", arrival_time: "20:00", day_of_trip: 2, index_in_course: 3)
Transportation.create(name: "車")
Transportation.create(name: "徒歩")
Transportation.create(name: "フェリー")
Transportation.create(name: "自転車")
Transportation.create(name: "バス")
Transportation.create(name: "飛行機")
TripCourseTransportation.create(from_id: 1, to_id: 2, transportation_id: 1)
TripCourseTransportation.create(from_id: 2, to_id: 3, transportation_id: 2)
TripCourseTransportation.create(from_id: 4, to_id: 5, transportation_id: 2)
TripCourseTransportation.create(from_id: 5, to_id: 6, transportation_id: 2)