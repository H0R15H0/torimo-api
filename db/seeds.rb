# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
u = User.create(token: "token")
Transportation.create(name: "車")
Transportation.create(name: "徒歩")
Transportation.create(name: "フェリー")
Transportation.create(name: "自転車")
Transportation.create(name: "バス")
Transportation.create(name: "飛行機")
places = ["京都", "東京", "東京駅", "浅草", "銀座", "お台場", "新宿", "皇居", "沖縄", "兵庫", "北海道", "青森"]
100.times do |no|
  trip = Trip.create(user_id: u.id, main_place: places.sample, budget: 50000, title: "#{places.sample}旅行記録 #{no}")
  c1 = TripCourse.create(trip_id: trip.id, place: places.sample, arrival_time: "10:00", day_of_trip: 1, index_in_course: 1)
  c2 = TripCourse.create(trip_id: trip.id, place: places.sample, arrival_time: "12:00", day_of_trip: 1, index_in_course: 2)
  c3 = TripCourse.create(trip_id: trip.id, place: places.sample, arrival_time: "18:00", day_of_trip: 1, index_in_course: 3)
  c4 = TripCourse.create(trip_id: trip.id, place: places.sample, arrival_time: "9:00", day_of_trip: 2, index_in_course: 4)
  c5 = TripCourse.create(trip_id: trip.id, place: places.sample, arrival_time: "13:00", day_of_trip: 2, index_in_course: 5)
  c6 = TripCourse.create(trip_id: trip.id, place: places.sample, arrival_time: "20:00", day_of_trip: 2, index_in_course: 6)
  TripCourseTransportation.create(from_id: c1.id, to_id: c2.id, transportation_id: 1)
  TripCourseTransportation.create(from_id: c2.id, to_id: c3.id, transportation_id: 2)
  TripCourseTransportation.create(from_id: c4.id, to_id: c5.id, transportation_id: 4)
  TripCourseTransportation.create(from_id: c5.id, to_id: c6.id, transportation_id: 2)
end