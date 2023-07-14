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

ActiveRecord::Schema[7.0].define(version: 2023_07_14_151537) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "offer_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_bookings_on_offer_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "brand"
    t.string "model"
    t.string "fuel_mode"
    t.integer "horsepower"
    t.string "color"
    t.integer "price_per_day"
    t.integer "min_age", default: 18
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rate"
    t.string "comment"
    t.bigint "booking_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.boolean "is_admin", default: false
    t.boolean "owner_mode", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "offers"
  add_foreign_key "bookings", "users"
  add_foreign_key "offers", "users"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "users"
end
