# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150425234545) do

  create_table "cons", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "con_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.datetime "start"
    t.datetime "finish"
  end

  add_index "events", ["con_id"], name: "index_events_on_con_id"

  create_table "places", force: :cascade do |t|
    t.integer  "parent_id"
    t.integer  "con_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "places", ["con_id"], name: "index_places_on_con_id"
  add_index "places", ["parent_id"], name: "index_places_on_parent_id"

  create_table "reservations", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "reservable_id"
    t.string   "reservable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "reservations", ["event_id"], name: "index_reservations_on_event_id"
  add_index "reservations", ["reservable_type", "reservable_id"], name: "index_reservations_on_reservable_type_and_reservable_id"

  create_table "schedule_places", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "schedule_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "schedule_places", ["place_id"], name: "index_schedule_places_on_place_id"
  add_index "schedule_places", ["schedule_id"], name: "index_schedule_places_on_schedule_id"

  create_table "schedules", force: :cascade do |t|
    t.datetime "start"
    t.datetime "finish"
    t.string   "name"
    t.integer  "con_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "schedules", ["con_id"], name: "index_schedules_on_con_id"

end
