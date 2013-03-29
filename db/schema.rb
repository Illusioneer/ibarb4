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

ActiveRecord::Schema.define(version: 20130327024215) do

  create_table "nodes", force: true do |t|
    t.integer  "node_id"
    t.integer  "version_id"
    t.integer  "current_version_id"
    t.string   "language"
    t.string   "title"
    t.hstore   "authors_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "unpublished_at"
    t.datetime "first_published"
    t.datetime "last_published"
    t.string   "rank"
    t.hstore   "metadata"
    t.text     "content"
  end

  add_index "nodes", ["current_version_id"], name: "index_nodes_on_current_version_id"
  add_index "nodes", ["node_id"], name: "index_nodes_on_node_id"
  add_index "nodes", ["version_id"], name: "index_nodes_on_version_id"

  create_table "users", force: true do |t|
    t.integer  "uid"
    t.string   "name"
    t.string   "password"
    t.string   "mail"
    t.string   "tagline"
    t.datetime "last_update"
    t.datetime "last_access"
    t.hstore   "status"
    t.string   "timezone"
    t.hstore   "metadata"
    t.hstore   "user_roles"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
