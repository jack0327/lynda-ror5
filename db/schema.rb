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

ActiveRecord::Schema.define(version: 20170421102246) do

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",            limit: 25
    t.string   "last_name",       limit: 50
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "username",        limit: 25
    t.string   "hashed_password"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["username"], name: "index_admin_users_on_username", using: :btree
  end

  create_table "admin_users_pages", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admin_user_id"
    t.integer "page_id"
    t.index ["admin_user_id", "page_id"], name: "index_admin_users_pages_on_admin_user_id_and_page_id", using: :btree
  end

  create_table "pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.integer  "position"
    t.string   "description"
    t.integer  "subject_id"
  end

  create_table "section_edits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "admin_user_id"
    t.integer  "section_id"
    t.string   "summary"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id", "section_id"], name: "index_section_edits_on_admin_user_id_and_section_id", using: :btree
  end

  create_table "sections", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "position"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "visible",    default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "position",   default: 1
  end

end
