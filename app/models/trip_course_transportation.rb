class TripCourseTransportation < ApplicationRecord
  belongs_to :transportation
  belongs_to :from, class_name: "TripCourse"
  belongs_to :to, class_name: "TripCourse"
end
