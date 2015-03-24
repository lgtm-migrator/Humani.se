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

ActiveRecord::Schema.define(version: 20150324130426) do

  create_table "admins", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "login",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "author_id",        limit: 4
    t.string   "title",            limit: 255
    t.text     "body",             limit: 65535
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "abstract",         limit: 65535
    t.boolean  "enabled",          limit: 1,     default: false
    t.string   "url_title",        limit: 255
    t.string   "meta_description", limit: 255
    t.string   "meta_keywords",    limit: 255
    t.string   "filepicker_url",   limit: 255
  end

  add_index "posts", ["published_at"], name: "index_posts_on_published_at", using: :btree
  add_index "posts", ["url_title"], name: "index_posts_on_url_title", unique: true, using: :btree

end
