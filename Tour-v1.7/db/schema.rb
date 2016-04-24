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

ActiveRecord::Schema.define(version: 20160424023334) do

  create_table "bookings", force: :cascade do |t|
    t.integer  "tour_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "tour_time_id"
    t.integer  "user_id"
  end

  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id"

  create_table "passengers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "tour_id"
  end

  create_table "tour_times", force: :cascade do |t|
    t.integer  "tour_id"
    t.integer  "duration"
    t.datetime "departure_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "tour_times", ["tour_id"], name: "index_tour_times_on_tour_id"

  create_table "tours", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "location"
    t.decimal  "cost"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "tour_id"
  end

  create_table "user_bookings", force: :cascade do |t|
    t.integer  "booking_id"
    t.integer  "passenger_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "user_bookings", ["booking_id"], name: "index_user_bookings_on_booking_id"
  add_index "user_bookings", ["passenger_id"], name: "index_user_bookings_on_passenger_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "date_of_birth"
    t.string   "home_phone"
    t.string   "mobile_phone"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "zipcode"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
