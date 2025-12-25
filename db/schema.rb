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

ActiveRecord::Schema[7.1].define(version: 2025_12_25_142824) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ai_requests", force: :cascade do |t|
    t.text "prompt"
    t.text "response"
    t.string "status", default: "pending", null: false
    t.bigint "deck_id"
    t.jsonb "metadata"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deck_id"], name: "index_ai_requests_on_deck_id"
    t.index ["status"], name: "index_ai_requests_on_status"
  end

  create_table "decks", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.string "source", default: "manual", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["source"], name: "index_decks_on_source"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.string "user_identifier", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id", "user_identifier"], name: "index_favorites_on_question_id_and_user_identifier", unique: true
    t.index ["question_id"], name: "index_favorites_on_question_id"
    t.index ["user_identifier"], name: "index_favorites_on_user_identifier"
  end

  create_table "questions", force: :cascade do |t|
    t.text "content", null: false
    t.integer "position", default: 0
    t.bigint "deck_id", null: false
    t.string "source", default: "manual", null: false
    t.jsonb "ai_metadata"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deck_id", "position"], name: "index_questions_on_deck_id_and_position"
    t.index ["deck_id"], name: "index_questions_on_deck_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.bigint "deck_id", null: false
    t.jsonb "shuffled_order", default: []
    t.integer "current_index", default: 0
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deck_id"], name: "index_sessions_on_deck_id"
    t.index ["session_token"], name: "index_sessions_on_session_token", unique: true
  end

  add_foreign_key "ai_requests", "decks"
  add_foreign_key "favorites", "questions"
  add_foreign_key "questions", "decks"
  add_foreign_key "sessions", "decks"
end
