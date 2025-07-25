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

ActiveRecord::Schema[7.1].define(version: 2025_07_24_160841) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "builders", force: :cascade do |t|
    t.string "name"
    t.string "internet_site"
    t.string "postal_address"
    t.string "origin_country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "type_game"
    t.string "description"
    t.date "exit_date"
    t.float "price"
    t.integer "min_player"
    t.integer "max_player"
    t.integer "min_age"
    t.bigint "studio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_games_on_studio_id"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.date "exit_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "builder_id", null: false
    t.index ["builder_id"], name: "index_platforms_on_builder_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "internet_site"
    t.string "postal_address"
    t.string "origin_country"
    t.bigint "builder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["builder_id"], name: "index_studios_on_builder_id"
  end

  create_table "user_has_platforms", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "platform_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["platform_id"], name: "index_user_has_platforms_on_platform_id"
    t.index ["user_id"], name: "index_user_has_platforms_on_user_id"
  end

  create_table "user_play_games", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_user_play_games_on_game_id"
    t.index ["user_id"], name: "index_user_play_games_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "games", "studios"
  add_foreign_key "platforms", "builders"
  add_foreign_key "studios", "builders"
  add_foreign_key "user_has_platforms", "platforms"
  add_foreign_key "user_has_platforms", "users"
  add_foreign_key "user_play_games", "games"
  add_foreign_key "user_play_games", "users"
end
