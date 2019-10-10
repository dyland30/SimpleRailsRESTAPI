# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_10_195952) do

  create_table "aerolineas", force: :cascade do |t|
    t.integer "idAerolinea"
    t.string "nombre"
    t.string "iatacode"
    t.string "oaci"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vuelos", force: :cascade do |t|
    t.string "numvuelo"
    t.datetime "fechaprogramado"
    t.datetime "fechareal"
    t.string "estado"
    t.string "direccion"
    t.integer "aerolinea_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["aerolinea_id"], name: "index_vuelos_on_aerolinea_id"
  end

  add_foreign_key "vuelos", "aerolineas"
end
