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

ActiveRecord::Schema.define(version: 20170426195302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "lecturers", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "lecturers_school_modules", id: false, force: :cascade do |t|
    t.integer "lecturer_id",      null: false
    t.integer "school_module_id", null: false
  end

  create_table "module_admins", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "school_modules", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "student_id"
    t.index ["student_id"], name: "index_school_modules_on_student_id", using: :btree
  end

  create_table "school_modules_students", id: false, force: :cascade do |t|
    t.integer "student_id",       null: false
    t.integer "school_module_id", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "password_digest"
    t.integer  "school_module_id"
    t.index ["school_module_id"], name: "index_students_on_school_module_id", using: :btree
  end

  add_foreign_key "school_modules", "students"
  add_foreign_key "students", "school_modules"
end
