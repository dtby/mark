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

ActiveRecord::Schema.define(version: 20151113110108) do

  create_table "administrators", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "administrators", ["email"], name: "index_administrators_on_email", unique: true, using: :btree
  add_index "administrators", ["reset_password_token"], name: "index_administrators_on_reset_password_token", unique: true, using: :btree

  create_table "grades", force: :cascade do |t|
    t.float    "target",     limit: 24
    t.float    "content",    limit: 24
    t.float    "plan",       limit: 24
    t.float    "express",    limit: 24
    t.integer  "judge_id",   limit: 4
    t.integer  "player_id",  limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.float    "total",      limit: 24
  end

  add_index "grades", ["judge_id"], name: "index_grades_on_judge_id", using: :btree
  add_index "grades", ["player_id"], name: "index_grades_on_player_id", using: :btree

  create_table "judges", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "phone",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
  end

  add_index "judges", ["email"], name: "index_judges_on_email", unique: true, using: :btree
  add_index "judges", ["reset_password_token"], name: "index_judges_on_reset_password_token", unique: true, using: :btree

  create_table "players", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "number",     limit: 255
    t.string   "college",    limit: 255
    t.string   "phone",      limit: 255
  end

  add_foreign_key "grades", "judges"
  add_foreign_key "grades", "players"
end
