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

ActiveRecord::Schema.define(version: 20151027174824) do

  create_table "consumos", force: :cascade do |t|
    t.integer  "liquidacion_id"
    t.string   "insumo"
    t.decimal  "cantidad"
    t.decimal  "precio"
    t.decimal  "total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "consumos", ["liquidacion_id"], name: "index_consumos_on_liquidacion_id"

  create_table "liquidaciones", force: :cascade do |t|
    t.integer  "prestador_id"
    t.integer  "mes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "liquidaciones", ["prestador_id"], name: "index_liquidaciones_on_prestador_id"

  create_table "prestaciones", force: :cascade do |t|
    t.integer  "liquidacion_id"
    t.boolean  "domiciliaria"
    t.datetime "fecha"
    t.string   "nombre"
    t.decimal  "cantidad"
    t.decimal  "precio"
    t.decimal  "km"
    t.decimal  "total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "prestaciones", ["liquidacion_id"], name: "index_prestaciones_on_liquidacion_id"

  create_table "prestadores", force: :cascade do |t|
    t.string   "nombre"
    t.decimal  "basico_mensual"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.decimal  "precio_km"
  end

end
