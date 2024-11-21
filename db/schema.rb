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

ActiveRecord::Schema[7.0].define(version: 2024_11_21_190124) do
  create_table "blocks", force: :cascade do |t|
    t.string "reasons"
    t.string "start_date"
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "contract_price", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responsibles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "base_charge"
    t.string "start_date"
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_responsibles_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "team_id"
    t.integer "responsibles_id"
    t.integer "customers_id"
    t.integer "blocks_id"
    t.string "title"
    t.text "description"
    t.integer "status", default: 0
    t.string "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blocks_id"], name: "index_tasks_on_blocks_id"
    t.index ["customers_id"], name: "index_tasks_on_customers_id"
    t.index ["responsibles_id"], name: "index_tasks_on_responsibles_id"
    t.index ["team_id"], name: "index_tasks_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workspace_teams", force: :cascade do |t|
    t.integer "workspace_id", null: false
    t.integer "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_workspace_teams_on_team_id"
    t.index ["workspace_id"], name: "index_workspace_teams_on_workspace_id"
  end

# Could not dump table "workspaces" because of following StandardError
#   Unknown type 'uuid' for column 'id'

  add_foreign_key "responsibles", "users"
  add_foreign_key "tasks", "blocks", column: "blocks_id"
  add_foreign_key "tasks", "customers", column: "customers_id"
  add_foreign_key "tasks", "responsibles", column: "responsibles_id"
  add_foreign_key "tasks", "teams"
  add_foreign_key "teams", "users"
  add_foreign_key "workspace_teams", "teams"
  add_foreign_key "workspace_teams", "workspaces"
end
