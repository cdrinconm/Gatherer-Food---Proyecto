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

ActiveRecord::Schema.define(version: 20190317212207) do

  create_table "posts", force: :cascade do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "puntodeentregas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "habitantesBeneficiados"
    t.text     "ubicacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recolectaspendientes", force: :cascade do |t|
    t.string   "organizacion"
    t.datetime "fecha"
    t.string   "direccion"
    t.decimal  "cantidadKilos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recolectasrealizadas", force: :cascade do |t|
    t.string   "organizacion"
    t.datetime "fecha"
    t.string   "direccion"
    t.decimal  "cantidadKilos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recolectores", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.string "correo"
  end

  create_table "representantes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "edad"
    t.string   "telefono"
    t.string   "organizacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "representante"
    t.string   "telefonoRepresentante"
    t.string   "direccionUrl"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "usuario"
    t.string "contrasena"
    t.string "empresa"
  end

end
