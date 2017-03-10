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

ActiveRecord::Schema.define(version: 20170310172108) do

  create_table "milestones", force: :cascade do |t|
    t.datetime "complete_by"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id",     limit: 4
    t.integer  "skill_id",    limit: 4
  end

  add_index "milestones", ["skill_id"], name: "fk_rails_7718e2a375", using: :btree
  add_index "milestones", ["user_id"], name: "fk_rails_56886b3a4d", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "age",         limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "description", limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",   limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "milestones", "skills"
  add_foreign_key "milestones", "users"
end
