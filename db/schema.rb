# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_06_213433) do

  create_table "appointments", force: :cascade do |t|
    t.date "visit"
    t.string "physician"
    t.string "patient"
    t.integer "Physician_id", null: false
    t.integer "Patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Patient_id"], name: "index_appointments_on_Patient_id"
    t.index ["Physician_id"], name: "index_appointments_on_Physician_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "street"
    t.string "zip"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string "name"
    t.string "specialty"
    t.integer "office_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["office_id"], name: "index_physicians_on_office_id"
  end

  add_foreign_key "appointments", "Patients"
  add_foreign_key "appointments", "Physicians"
  add_foreign_key "physicians", "offices"
end
