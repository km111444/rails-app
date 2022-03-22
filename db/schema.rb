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

ActiveRecord::Schema.define(version: 2022_03_22_044132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatrooms", force: :cascade do |t|
    t.string "chatroom_name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_chatrooms_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "message"
    t.bigint "chatroom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
  end

  create_table "pharmacies", force: :cascade do |t|
    t.string "pharmacy_name"
    t.string "address"
    t.string "pharmacy_description"
    t.string "image"
    t.boolean "available"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_pharmacies_on_user_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string "picture"
    t.string "prescription_description"
    t.string "status"
    t.bigint "user_id", null: false
    t.bigint "pharmacy_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pharmacy_id"], name: "index_prescriptions_on_pharmacy_id"
    t.index ["user_id"], name: "index_prescriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "chatrooms", "users"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "pharmacies", "users"
  add_foreign_key "prescriptions", "pharmacies"
  add_foreign_key "prescriptions", "users"
end
