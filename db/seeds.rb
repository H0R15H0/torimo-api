# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
u = User.create(token: "token")
trip = Trip.create(user_id: u.id, main_place: "都道府県", budget: 50000, title: "sample title")
TripCourse.create(trip_id: trip.id, place: "都道府県", arrival_time: Time.now, day_of_trip: 1, index_in_course: 1)
TripCourse.create(trip_id: trip.id, place: "都道府県", arrival_time: Time.now, day_of_trip: 1, index_in_course: 2)
TripCourse.create(trip_id: trip.id, place: "都道府県", arrival_time: Time.now, day_of_trip: 2, index_in_course: 3)
Transportation.create(name: "車")
Transportation.create(name: "徒歩")
TripCourseTransportation.create(from_id: 1, to_id: 2, transportation_id: 1)
TripCourseTransportation.create(from_id: 2, to_id: 3, transportation_id: 2)
