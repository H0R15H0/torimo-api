class CreateTripCourseTransportations < ActiveRecord::Migration[6.0]
  def change
    create_table :trip_course_transportations do |t|
      t.integer :from
      t.integer :to
      t.references :transportation, null: false, foreign_key: true

      t.timestamps
    end
    add_index :trip_course_transportations, :from
    add_index :trip_course_transportations, :to
    add_index :trip_course_transportations, [:from, :to], unique: true
  end
end
