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

ActiveRecord::Schema.define(version: 2018_10_30_024740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buena_accions", force: :cascade do |t|
    t.string "descripcion"
    t.integer "puntaje"
    t.bigint "remitente_id"
    t.bigint "receptor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receptor_id"], name: "index_buena_accions_on_receptor_id"
    t.index ["remitente_id"], name: "index_buena_accions_on_remitente_id"
  end

  create_table "tipo_documentos", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "documento_identificacion"
    t.bigint "tipo_documento_id"
    t.string "email"
    t.string "password_digest"
    t.decimal "telefono", precision: 10
    t.integer "puntaje_total"
    t.integer "puntaje_disponible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["documento_identificacion"], name: "index_usuarios_on_documento_identificacion", unique: true
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["tipo_documento_id"], name: "index_usuarios_on_tipo_documento_id"
  end

  add_foreign_key "usuarios", "tipo_documentos"
end
