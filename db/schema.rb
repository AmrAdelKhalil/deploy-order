# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_04_122525) do
  create_table "histories", force: :cascade do |t|
    t.integer "release_train_id", null: false
    t.integer "version"
    t.string "run_result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["release_train_id"], name: "index_histories_on_release_train_id"
  end

  create_table "release_trains", force: :cascade do |t|
    t.string "engineering_manager"
    t.string "backend"
    t.date "rt_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "release_trains_system_services", id: false, force: :cascade do |t|
    t.integer "release_train_id"
    t.integer "system_service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["release_train_id"], name: "index_release_trains_system_services_on_release_train_id"
    t.index ["system_service_id"], name: "index_release_trains_system_services_on_system_service_id"
  end

  create_table "system_services", force: :cascade do |t|
    t.string "name"
    t.string "tribe"
    t.string "squad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "histories", "release_trains"
end
