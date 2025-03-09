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

ActiveRecord::Schema[7.1].define(version: 2025_02_28_194405) do
  create_table "airline_pictures", force: :cascade do |t|
    t.string "title"
    t.string "imagable_type", null: false
    t.integer "imagable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imagable_type", "imagable_id"], name: "index_airline_pictures_on_imagable"
  end

  create_table "airlines", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "slug"
    t.integer "airline_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "score"
    t.integer "airline_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airline_id"], name: "index_reviews_on_airline_id"
  end

  add_foreign_key "reviews", "airlines"
end
