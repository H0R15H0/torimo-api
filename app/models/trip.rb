class Trip < ApplicationRecord
  has_many :trip_courses
  belong_to :user
end
