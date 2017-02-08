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

ActiveRecord::Schema.define(version: 20170208044610) do

  create_table "blanket_types", force: :cascade do |t|
    t.string   "blanket_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "blankets", force: :cascade do |t|
    t.string   "name"
    t.string   "colour"
    t.string   "trim"
    t.string   "note"
    t.string   "photo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "blanket_type_id"
    t.string   "size"
    t.string   "brand"
    t.integer  "status_ids"
  end

  create_table "blankets_statuses", id: false, force: :cascade do |t|
    t.integer "blanket_id", null: false
    t.integer "status_id",  null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
