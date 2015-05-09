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

ActiveRecord::Schema.define(version: 20150509140752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "accounts", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "mail"
    t.string   "phone"
    t.string   "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logins", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "account_id"
    t.datetime "logged_in"
    t.datetime "last_operation"
    t.datetime "logged_out"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "messages", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "room_id"
    t.uuid     "user_id"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "scope_id"
    t.string   "name"
    t.string   "picture"
    t.string   "comment"
    t.string   "ditail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relation_project_teams", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "project_id"
    t.uuid     "team_id"
    t.datetime "joined"
    t.datetime "leave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relation_project_users", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "project_id"
    t.uuid     "user_id"
    t.datetime "joined"
    t.datetime "leave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relation_room_projects", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "room_id"
    t.uuid     "project_id"
    t.datetime "joined"
    t.datetime "leave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relation_room_teams", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "room_id"
    t.uuid     "team_id"
    t.datetime "joined"
    t.datetime "leave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relation_room_users", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "room_id"
    t.uuid     "user_id"
    t.datetime "joined"
    t.datetime "leave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relation_team_users", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "team_id"
    t.uuid     "user_id"
    t.datetime "joined"
    t.datetime "leave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "scope_id"
    t.string   "name"
    t.string   "picture"
    t.string   "comment"
    t.string   "ditail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scopes", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "scope_id"
    t.string   "name"
    t.string   "picture"
    t.string   "comment"
    t.string   "ditail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "account_id"
    t.uuid     "role_id"
    t.uuid     "scope_id"
    t.string   "name"
    t.string   "picture"
    t.string   "comment"
    t.string   "ditail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
