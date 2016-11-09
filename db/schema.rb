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

ActiveRecord::Schema.define(version: 20161109003324) do

  create_table "diagnoses", force: :cascade do |t|
    t.string   "diagnosis"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "specialty"
    t.string   "cmdv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "address"
    t.date     "birth_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "diagnosis_id"
    t.index ["diagnosis_id"], name: "index_patients_on_diagnosis_id"
  end

end
