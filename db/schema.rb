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

ActiveRecord::Schema.define(version: 2020_01_01_210524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_volunteers", force: :cascade do |t|
    t.integer "event_id"
    t.integer "volunteer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.string "description"
    t.integer "organization_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "username"
    t.string "display_name", default: ""
    t.string "address", default: ""
    t.string "logo", default: "https://unsplash.com/photos/SIU1Glk6v5k"
    t.string "description", default: ""
    t.string "mission", default: ""
    t.string "contact", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "poems", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "modified_content"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "username"
    t.string "display_name", default: ""
    t.string "image", default: "https://unsplash.com/photos/7uSrOyY1U0I"
    t.string "bio", default: ""
    t.integer "points", default: 0
    t.string "title", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
