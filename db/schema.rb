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

ActiveRecord::Schema.define(version: 20170314140853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authentications", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider", "uid"], name: "index_authentications_on_provider_and_uid", using: :btree
  end

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

  create_table "users", force: :cascade do |t|
    t.string   "email",                                    null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.integer  "failed_logins_count",          default: 0
    t.datetime "lock_expires_at"
    t.string   "unlock_token"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "last_login_from_ip_address"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at", using: :btree
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", using: :btree
  end

end
