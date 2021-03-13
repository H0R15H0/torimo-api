class CreateTripCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :trip_courses do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :place
      t.string :arrival_time
      t.integer :day_of_trip
      t.integer :index_in_course

      t.timestamps
    end
  end
end
