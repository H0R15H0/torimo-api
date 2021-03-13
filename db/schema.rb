# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_13_080756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "transportations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trip_course_transportations", force: :cascade do |t|
    t.integer "from"
    t.integer "to"
    t.bigint "transportation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["from", "to"], name: "index_trip_course_transportations_on_from_and_to", unique: true
    t.index ["from"], name: "index_trip_course_transportations_on_from"
    t.index ["to"], name: "index_trip_course_transportations_on_to"
    t.index ["transportation_id"], name: "index_trip_course_transportations_on_transportation_id"
  end

  create_table "trip_courses", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.string "place"
    t.string "arrival_time"
    t.integer "day_of_trip"
    t.integer "index_in_course"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trip_id"], name: "index_trip_courses_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "title"
    t.integer "budget"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "trip_course_transportations", "transportations"
  add_foreign_key "trip_courses", "trips"
end
