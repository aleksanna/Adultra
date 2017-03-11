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

ActiveRecord::Schema.define(version: 20170311011632) do

  create_table "milestones", force: :cascade do |t|
    t.datetime "complete_by"
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "timeline_id", limit: 4
    t.integer  "skill_id",    limit: 4
  end

  add_index "milestones", ["skill_id"], name: "index_milestones_on_skill_id", using: :btree
  add_index "milestones", ["timeline_id"], name: "index_milestones_on_timeline_id", using: :btree
  add_index "milestones", ["user_id"], name: "index_milestones_on_user_id", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "description",   limit: 255
    t.integer  "suggested_age", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "skillsets", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "skill_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "skillsets", ["skill_id"], name: "index_skillsets_on_skill_id", using: :btree
  add_index "skillsets", ["user_id"], name: "index_skillsets_on_user_id", using: :btree

  create_table "timelines", force: :cascade do |t|
    t.datetime "start"
    t.integer  "user_id",          limit: 4
    t.integer  "projected_days",   limit: 4
    t.datetime "projected_finish"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "timelines", ["user_id"], name: "index_timelines_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",   limit: 255
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "email",      limit: 255
    t.integer  "age",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "milestones", "skills"
  add_foreign_key "milestones", "timelines"
  add_foreign_key "milestones", "users"
  add_foreign_key "skillsets", "skills"
  add_foreign_key "skillsets", "users"
  add_foreign_key "timelines", "users"
end
