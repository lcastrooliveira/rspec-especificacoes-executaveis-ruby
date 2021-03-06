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

ActiveRecord::Schema.define(version: 20170714044943) do

  create_table "artigos", force: :cascade do |t|
    t.string "titulo"
    t.string "conteudo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "aprovado"
    t.integer "autor_id"
    t.index ["autor_id"], name: "index_artigos_on_autor_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "nome"
    t.integer "id_nacional"
    t.datetime "escolhido_em"
    t.boolean "aprovado"
    t.integer "ataque"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
  end

end
