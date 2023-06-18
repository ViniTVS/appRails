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

ActiveRecord::Schema[7.0].define(version: 2023_06_18_210740) do
  create_table "autors", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "autors_livros", id: false, force: :cascade do |t|
    t.integer "autor_id", null: false
    t.integer "livro_id", null: false
  end

  create_table "editoras", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "livros", force: :cascade do |t|
    t.integer "ano"
    t.string "nome"
    t.integer "editora_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["editora_id"], name: "index_livros_on_editora_id"
  end

  create_table "sinopses", force: :cascade do |t|
    t.text "texto"
    t.integer "livro_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["livro_id"], name: "index_sinopses_on_livro_id"
  end

  add_foreign_key "livros", "editoras"
  add_foreign_key "sinopses", "livros"
end
