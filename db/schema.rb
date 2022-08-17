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

ActiveRecord::Schema.define(version: 2022_08_17_055739) do

  create_table "add_kitchens", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "Kitchen_name"
    t.string "kitchen_address"
    t.string "latitude"
    t.string "longitude"
    t.string "nation"
    t.string "state"
    t.integer "pincode"
    t.string "city"
    t.bigint "kitchen_ph_no"
    t.bigint "kitchen_owner_no"
    t.string "kitchen_owner_name"
    t.string "kitchen_owner_mailID"
    t.string "establishment_type"
    t.string "types_of_cuisines"
    t.string "kitchen_open_time"
    t.string "kitchen_close_time"
    t.string "kitchen_open_days"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "kitchen_images"
    t.string "kitchen_owner_image"
  end

  create_table "subscriptions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "mobile_number"
    t.integer "no_of_persons"
    t.string "location"
    t.string "address"
    t.string "menu_preference"
    t.string "category"
    t.string "subscription_type"
    t.integer "price_expectations"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.bigint "ph_number"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
