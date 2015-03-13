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

ActiveRecord::Schema.define(version: 20150313150827) do

  create_table "clientes", force: true do |t|
    t.string   "clientenombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "descripcioncortes", force: true do |t|
    t.integer  "tallacantidad"
    t.integer  "capas"
    t.string   "color"
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
    t.string   "corte"
    t.string   "ancho"
    t.integer  "tela_id"
    t.string   "largotrazo"
    t.string   "largotendido"
    t.string   "numeropaquetes"
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

  create_table "prendas", force: true do |t|
    t.string   "prendanombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tallas", force: true do |t|
    t.string   "tallanombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telas", force: true do |t|
    t.string   "telanombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
