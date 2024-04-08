# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_04_08_212903) do
  create_table "delivery_routes", force: :cascade do |t|
    t.string "name", null: false
    t.integer "distance", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trip_tasks", force: :cascade do |t|
    t.integer "trip_id", null: false
    t.string "type", null: false
    t.string "address", null: false
    t.string "addressee_name", null: false
    t.boolean "completed", default: false
    t.text "message"
    t.datetime "estimated_arrival"
    t.datetime "completion_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_trip_tasks_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "delivery_route_id", null: false
    t.datetime "scheduled_departure", null: false
    t.integer "status", default: 0
    t.string "responsible", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["delivery_route_id"], name: "index_trips_on_delivery_route_id"
  end

  add_foreign_key "trip_tasks", "trips"
  add_foreign_key "trips", "delivery_routes"
end
