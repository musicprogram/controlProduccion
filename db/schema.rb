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

ActiveRecord::Schema.define(version: 20150318025228) do

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
    t.integer  "tallacantidad"
    t.integer  "capas"
    t.integer  "color_id"
    t.integer  "tallaxs"
    t.integer  "tallas"
    t.integer  "tallam"
    t.integer  "tallal"
    t.integer  "tallaxl"
    t.integer  "ordenproduccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "descripcioncortes", ["ordenproduccion_id"], name: "index_descripcioncortes_on_ordenproduccion_id"

  create_table "ordenproduccions", force: true do |t|
    t.datetime "fechaprogramacion"
    t.string   "ordennumero"
    t.integer  "cliente_id"
    t.text     "descripcion"
    t.string   "referencia"
    t.integer  "corte_id"
    t.string   "ancho"
    t.integer  "tela_id"
    t.integer  "largotrazo"
    t.integer  "vecestrazo"
    t.string   "largotendido"
    t.integer  "promedio"
    t.string   "cantidad"
    t.string   "promediounidad"
    t.string   "totalmetros"
    t.string   "tiqueteada"
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
    t.datetime "fechaingreso"
    t.datetime "fechasalida"
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

end
