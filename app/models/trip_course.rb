class TripCourse < ApplicationRecord
  belongs_to :trip
  has_one :active_relationships,  class_name:  "TripCourseTransportation",
                                   foreign_key: "to_id",
                                   dependent:   :destroy
  has_one :passive_relationships, class_name:  "TripCourseTransportation",
                                   foreign_key: "from_id",
                                   dependent:   :destroy
  has_one :back, through: :active_relationships, source: :from
  has_one :next, through: :passive_relationships, source: :to

  def transportation_to_next
    return TripCourseTransportation.find_by(from_id: self.id).transportation
  end

end
