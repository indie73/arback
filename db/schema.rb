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

ActiveRecord::Schema.define(version: 2019_09_28_200758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "control_points", force: :cascade do |t|
    t.string "username", null: false
    t.bigint "instruction_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instruction_id"], name: "index_control_points_on_instruction_id"
  end

  create_table "details", force: :cascade do |t|
    t.string "name", null: false
    t.string "short_name", null: false
    t.string "link", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructions", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kits", force: :cascade do |t|
    t.bigint "instructions_id", null: false
    t.bigint "details_id", null: false
    t.integer "quantity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["details_id"], name: "index_kits_on_details_id"
    t.index ["instructions_id"], name: "index_kits_on_instructions_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "description", null: false
    t.bigint "instructions_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instructions_id"], name: "index_steps_on_instructions_id"
  end

  add_foreign_key "control_points", "instructions", on_delete: :cascade
  add_foreign_key "kits", "details", column: "details_id", on_delete: :cascade
  add_foreign_key "kits", "instructions", column: "instructions_id", on_delete: :cascade
  add_foreign_key "steps", "instructions", column: "instructions_id", on_delete: :cascade
end
