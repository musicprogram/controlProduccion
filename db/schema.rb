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

ActiveRecord::Schema.define(version: 20150324180127) do

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

  create_table "cuadroproduccions", force: true do |t|
    t.date     "fechatrazo"
    t.date     "anchotrazo"
    t.date     "fechacorte"
    t.date     "fechaentradabodega"
    t.date     "fechaentregamodulo"
    t.integer  "descripcioncorte_id"
    t.integer  "modulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cuadroproduccions", ["descripcioncorte_id"], name: "index_cuadroproduccions_on_descripcioncorte_id"
  add_index "cuadroproduccions", ["modulo_id"], name: "index_cuadroproduccions_on_modulo_id"

  create_table "descripcioncortes", force: true do |t|
    t.integer  "tallacantidad"
    t.integer  "color_id"
    t.integer  "tallaxs"
    t.integer  "tallas"
    t.integer  "tallam"
    t.integer  "tallal"
    t.integer  "tallaxl"
    t.integer  "tallasuma"
    t.integer  "ordenproduccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "descripcioncortes", ["ordenproduccion_id"], name: "index_descripcioncortes_on_ordenproduccion_id"

  create_table "instructores", force: true do |t|
    t.string   "nombre"
    t.date     "fecharecibo"
    t.integer  "cantidad"
    t.string   "tallaunidad"
    t.integer  "primeras"
    t.integer  "segundas"
    t.integer  "totalrecibidas"
    t.string   "observacionescalidad"
    t.date     "fechasalidaalmacen"
    t.integer  "cuadroproduccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  add_index "instructores", ["cuadroproduccion_id"], name: "index_instructores_on_cuadroproduccion_id"

  create_table "modulos", force: true do |t|
    t.string   "modulonombre"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "ordenterceros", force: true do |t|
    t.string   "referencia"
    t.string   "numeroop"
    t.string   "nombreproveedor"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.date     "fechaingreso"
    t.date     "fechasalida"
    t.string   "responsable"
    t.integer  "proceso_id"
    t.string   "cantidad"
    t.string   "pieza"
    t.integer  "color_id"
    t.string   "transportador"
    t.integer  "totalunidad"
    t.text     "observacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ordenterceros", ["color_id"], name: "index_ordenterceros_on_color_id"
  add_index "ordenterceros", ["proceso_id"], name: "index_ordenterceros_on_proceso_id"

  create_table "prendas", force: true do |t|
    t.string   "prendanombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "procesos", force: true do |t|
    t.string   "procesonombre"
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
