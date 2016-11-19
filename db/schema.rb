# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161118175601) do

  create_table "trip_reservations", force: :cascade do |t|
    t.integer  "trips_id"
    t.string   "name"
    t.string   "email"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trips_id"], name: "index_trip_reservations_on_trips_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string   "name"
    t.string   "destination"
    t.string   "continent"
    t.text     "about"
    t.string   "img"
    t.string   "category"
    t.integer  "weeks"
    t.float    "original_cost"
    t.float    "cost"
    t.integer  "available"
    t.integer  "sold"
    t.datetime "expires"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
