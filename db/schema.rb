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

ActiveRecord::Schema.define(version: 2019_11_29_040635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.integer "location_id"
    t.integer "user_id"
    t.datetime "create_date"
    t.datetime "event_start"
    t.datetime "event_end"
    t.integer "group_id"
    t.boolean "active"
    t.datetime "next_date"
    t.boolean "recurring"
    t.integer "attendance"
    t.integer "funds_raised"
    t.integer "views"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.index ["location_id", "user_id"], name: "index_events_on_location_id_and_user_id"
    t.index ["location_id"], name: "index_events_on_location_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "last_sign_in_at"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.integer "phone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.boolean "active"
    t.datetime "DOB"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "area_code"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
