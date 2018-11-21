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

ActiveRecord::Schema.define(version: 2018_11_21_163925) do

  create_table "aircrafts", force: :cascade do |t|
    t.string "file_name"
    t.integer "airline_id"
    t.string "aircraft_type"
    t.integer "airport_id"
    t.string "camera_model"
    t.integer "user_id"
    t.datetime "taken_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "airline_name"
    t.string "airport_name"
  end

  create_table "airlines", force: :cascade do |t|
    t.string "name"
    t.string "cord"
  end

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.string "cord"
  end

  create_table "reports", force: :cascade do |t|
    t.string "file_name"
    t.integer "airline_id"
    t.string "starting_point"
    t.string "arrival_point"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "departure_date"
    t.text "comment"
    t.integer "starting_airport_id"
    t.integer "arriving_airport_id"
    t.string "airline_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "icon"
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid"
    t.string "provider"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
