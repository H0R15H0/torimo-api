class CreateTripCourseTransportations < ActiveRecord::Migration[6.0]
  def change
    create_table :trip_course_transportations do |t|
      t.integer :from_id
      t.integer :to_id
      t.references :transportation, null: false, foreign_key: true

      t.timestamps
    end
    add_index :trip_course_transportations, :from_id
    add_index :trip_course_transportations, :to_id
    add_index :trip_course_transportations, [:from_id, :to_id], unique: true
  end
end
