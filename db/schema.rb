# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150705211412) do

  create_table "clientes", force: true do |t|
    t.string   "clientenombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "colornombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cortes", force: true do |t|
    t.string   "cortenombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "descripcioncortes", force: true do |t|
    t.integer  "color_id"
    t.integer  "tallaxs"
    t.integer  "tallas"
    t.integer  "tallam"
    t.integer  "tallal"
    t.integer  "tallaxl"
    t.integer  "talla6"
    t.integer  "talla8"
    t.integer  "talla10"
    t.integer  "talla12"
    t.integer  "talla14"
    t.integer  "talla28"
    t.integer  "talla30"
    t.integer  "talla32"
    t.integer  "talla34"
    t.integer  "talla36"
    t.integer  "tallasuma"
    t.integer  "ordenproduccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "descripcioncortes", ["color_id"], name: "index_descripcioncortes_on_color_id"
  add_index "descripcioncortes", ["ordenproduccion_id"], name: "index_descripcioncortes_on_ordenproduccion_id"

  create_table "materiales", force: true do |t|
    t.float    "anchom"
    t.integer  "largotrazom"
    t.integer  "tela_id"
    t.float    "largotendidom"
    t.integer  "capasm"
    t.float    "vecestrazom"
    t.float    "cantidad"
    t.integer  "ordenproduccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "materiales", ["ordenproduccion_id"], name: "index_materiales_on_ordenproduccion_id"
  add_index "materiales", ["tela_id"], name: "index_materiales_on_tela_id"

  create_table "nombres", force: true do |t|
    t.string   "nombreinstructor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "ordenproduccions", force: true do |t|
    t.date     "fechaprogramacion"
    t.integer  "cliente_id"
    t.text     "descripcion"
    t.string   "referencia"
    t.integer  "corte_id"
    t.string   "ancho"
    t.integer  "tela_id"
    t.float    "largotrazo"
    t.float    "vecestrazo"
    t.string   "largotendido"
    t.float    "promedio"
    t.string   "cantidad"
    t.string   "responsablecorte"
    t.float    "totalmetros"
    t.string   "tiqueteada"
    t.integer  "capas"
    t.integer  "prenda_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ordenproduccions", ["cliente_id"], name: "index_ordenproduccions_on_cliente_id"
  add_index "ordenproduccions", ["prenda_id"], name: "index_ordenproduccions_on_prenda_id"
  add_index "ordenproduccions", ["tela_id"], name: "index_ordenproduccions_on_tela_id"

  create_table "prendas", force: true do |t|
    t.string   "prendanombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tallas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telas", force: true do |t|
    t.string   "telanombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
