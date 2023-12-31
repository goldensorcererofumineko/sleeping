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

ActiveRecord::Schema[7.0].define(version: 2023_10_25_132448) do
  create_table "sleep_statistics", charset: "utf8mb4", force: :cascade do |t|
    t.string "period", null: false
    t.decimal "average_sleep_duration", precision: 10, null: false
    t.decimal "average_sleep_quality", precision: 10, null: false
    t.bigint "sleep_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sleep_id"], name: "index_sleep_statistics_on_sleep_id"
    t.index ["user_id"], name: "index_sleep_statistics_on_user_id"
  end

  create_table "sleeps", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "quality", null: false
    t.text "memo"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sleeps_on_user_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "sleep_statistics", "sleeps"
  add_foreign_key "sleep_statistics", "users"
  add_foreign_key "sleeps", "users"
end
