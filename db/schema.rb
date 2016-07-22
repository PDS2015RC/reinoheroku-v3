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

ActiveRecord::Schema.define(version: 20160710220309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_keys", force: :cascade do |t|
    t.string   "access_token"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "badges", force: :cascade do |t|
    t.string   "issuer_url"
    t.string   "issuer_organization"
    t.string   "name"
    t.string   "description"
    t.string   "img_url"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.integer  "xp"
    t.integer  "gold"
    t.string   "hair"
    t.string   "skin"
    t.string   "shirt"
    t.string   "pants"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "level"
    t.string   "helmet"
    t.string   "armor"
    t.string   "shield"
    t.string   "weapon"
    t.integer  "correct"
    t.integer  "wrong"
  end

  add_index "characters", ["user_id"], name: "index_characters_on_user_id", using: :btree

  create_table "done_lessons", force: :cascade do |t|
    t.integer  "lesson_id"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "score"
  end

  add_index "done_lessons", ["character_id"], name: "index_done_lessons_on_character_id", using: :btree
  add_index "done_lessons", ["lesson_id"], name: "index_done_lessons_on_lesson_id", using: :btree

  create_table "drag_drops", force: :cascade do |t|
    t.string   "lesson"
    t.string   "statement"
    t.string   "a"
    t.string   "b"
    t.string   "c"
    t.string   "d"
    t.string   "atitle"
    t.string   "btitle"
    t.string   "ctitle"
    t.string   "dtitle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "inventories", ["user_id"], name: "index_inventories_on_user_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "img"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "part"
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "url"
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_badges", force: :cascade do |t|
    t.integer  "badge_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "earner_email"
  end

  add_index "line_badges", ["badge_id"], name: "index_line_badges_on_badge_id", using: :btree
  add_index "line_badges", ["user_id"], name: "index_line_badges_on_user_id", using: :btree

  create_table "line_items", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "inventory_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "line_items", ["inventory_id"], name: "index_line_items_on_inventory_id", using: :btree
  add_index "line_items", ["item_id"], name: "index_line_items_on_item_id", using: :btree

  create_table "objective_images", force: :cascade do |t|
    t.string   "lesson"
    t.string   "statement"
    t.string   "aimg"
    t.string   "bimg"
    t.string   "cimg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "objective_textuals", force: :cascade do |t|
    t.string   "lesson"
    t.string   "statement"
    t.string   "a"
    t.string   "b"
    t.string   "c"
    t.string   "d"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "lesson"
    t.text     "statement"
    t.string   "a"
    t.string   "b"
    t.string   "c"
    t.string   "d"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjective_textuals", force: :cascade do |t|
    t.string   "lesson"
    t.string   "statement"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "characters", "users"
  add_foreign_key "done_lessons", "characters"
  add_foreign_key "done_lessons", "lessons"
  add_foreign_key "inventories", "users"
  add_foreign_key "line_badges", "badges"
  add_foreign_key "line_badges", "users"
  add_foreign_key "line_items", "inventories"
  add_foreign_key "line_items", "items"
end
