class Trip < ApplicationRecord
  has_many :trip_courses
  belongs_to :user

  accepts_nested_attributes_for :trip_courses, allow_destroy: true
end
