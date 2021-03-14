class Trip < ApplicationRecord
  has_many :trip_courses
  belongs_to :user
  has_many :transportations, through: :trip_courses, source: :transportation_to_next

  accepts_nested_attributes_for :trip_courses, allow_destroy: true
end
