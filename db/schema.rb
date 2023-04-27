
ActiveRecord::Schema[7.0].define(version: 2023_04_27_184417) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.integer "user_id"
    t.integer "category_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "category_id"
    t.integer "user_id"
    t.string "title"
    t.text "description"
    t.string "deadline"
    t.string "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
