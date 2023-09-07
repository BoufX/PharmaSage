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

ActiveRecord::Schema[7.0].define(version: 2023_09_06_215223) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.integer "amount"
    t.bigint "medicine_id", null: false
    t.bigint "pharmacy_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicine_id"], name: "index_availabilities_on_medicine_id"
    t.index ["pharmacy_id"], name: "index_availabilities_on_pharmacy_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.string "name"
    t.bigint "pharmacy_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pharmacy_id"], name: "index_chatrooms_on_pharmacy_id"
    t.index ["user_id"], name: "index_chatrooms_on_user_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amount"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "chatroom_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "pharmacies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.float "longitude"
    t.float "latitude"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"

    t.index ["user_id"], name: "index_pharmacies_on_user_id"

    t.boolean "status"

  end

  create_table "reservations", force: :cascade do |t|
    t.integer "amount"
    t.bigint "user_id", null: false
    t.bigint "medicine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicine_id"], name: "index_reservations_on_medicine_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "name"
    t.string "comment"
    t.string "rating"
    t.bigint "pharmacy_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "post_date"
    t.index ["pharmacy_id"], name: "index_reviews_on_pharmacy_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "availabilities", "medicines"
  add_foreign_key "availabilities", "pharmacies"
  add_foreign_key "chatrooms", "pharmacies"
  add_foreign_key "chatrooms", "users"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "pharmacies", "users"
  add_foreign_key "reservations", "medicines"
  add_foreign_key "reservations", "users"
  add_foreign_key "reviews", "pharmacies"
end
