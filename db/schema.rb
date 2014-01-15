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

ActiveRecord::Schema.define(version: 20140115033435) do

  create_table "badges", force: true do |t|
    t.string   "name"
    t.boolean  "restricted"
    t.text     "description"
    t.integer  "material"
    t.integer  "artwork_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "o_auth2_credentials", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "signet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "o_auth2_credentials", ["user_id"], name: "index_o_auth2_credentials_on_user_id"

  create_table "recognitions", force: true do |t|
    t.string   "type",         limit: 14
    t.text     "reason"
    t.integer  "recipient_id",            null: false
    t.integer  "awarder_id",              null: false
    t.integer  "badge_id",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "role"
    t.string   "name",                                null: false
    t.integer  "avatar_id"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
