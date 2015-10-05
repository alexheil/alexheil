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

ActiveRecord::Schema.define(version: 20151005005439) do

  create_table "admins", force: true do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true

  create_table "posts", force: true do |t|
    t.integer  "admin_id"
    t.string   "title"
    t.string   "category"
    t.string   "slug"
    t.string   "image"
    t.text     "description"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["admin_id"], name: "index_posts_on_admin_id"
  add_index "posts", ["slug"], name: "index_posts_on_slug"

  create_table "projects", force: true do |t|
    t.integer  "admin_id"
    t.string   "title"
    t.string   "category"
    t.string   "slug"
    t.string   "image"
    t.text     "description"
    t.text     "content"
    t.string   "start_date"
    t.string   "end_date"
    t.integer  "hours"
    t.string   "project_url"
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "tumblr_url"
    t.string   "googleplay_url"
    t.string   "instagram_url"
    t.string   "pinterest_url"
    t.string   "github_url"
    t.string   "youtube_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["admin_id"], name: "index_projects_on_admin_id"
  add_index "projects", ["slug"], name: "index_projects_on_slug"

end
