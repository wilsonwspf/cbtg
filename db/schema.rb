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

ActiveRecord::Schema.define(version: 20140206021340) do

  create_table "ctgs", force: true do |t|
    t.string   "name"
    t.string   "end"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "cep"
    t.string   "url"
    t.string   "email"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "cel"
    t.date     "fundacao"
    t.date     "filiacao"
    t.string   "logo"
    t.string   "endcor"
    t.string   "bairrocor"
    t.string   "cepcor"
    t.string   "cidadecor"
    t.string   "ufcor"
    t.string   "cnpj"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rt_id"
  end

  add_index "ctgs", ["rt_id"], name: "index_ctgs_on_rt_id"

  create_table "functions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "matricula"
    t.date     "filiacao"
    t.date     "nascimento"
    t.integer  "tipo"
    t.string   "natural"
    t.string   "uf"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "ufcid"
    t.string   "telres"
    t.string   "telfunc"
    t.string   "celular"
    t.string   "rg"
    t.string   "oexp"
    t.string   "cpf"
    t.string   "email"
    t.string   "conjuge"
    t.date     "nascconjuge"
    t.string   "picture"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ctg_id"
  end

  add_index "members", ["ctg_id"], name: "index_members_on_ctg_id"

  create_table "mtgs", force: true do |t|
    t.string   "name"
    t.string   "end"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "cep"
    t.string   "url"
    t.string   "email"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "cel"
    t.date     "fundacao"
    t.date     "filiacao"
    t.string   "logo"
    t.string   "endcor"
    t.string   "bairrocor"
    t.string   "cepcor"
    t.string   "cidadecor"
    t.string   "ufcor"
    t.string   "cnpj"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piquetes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ctg_id"
  end

  add_index "piquetes", ["ctg_id"], name: "index_piquetes_on_ctg_id"

  create_table "rts", force: true do |t|
    t.string   "name"
    t.string   "end"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "cep"
    t.string   "url"
    t.string   "email"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "cel"
    t.date     "fundacao"
    t.date     "filiacao"
    t.string   "logo"
    t.string   "endcor"
    t.string   "bairrocor"
    t.string   "cepcor"
    t.string   "cidadecor"
    t.string   "ufcor"
    t.string   "cnpj"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mtg_id"
  end

  add_index "rts", ["mtg_id"], name: "index_rts_on_mtg_id"

  create_table "tipodirs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiposocs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tpevents", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tpeves", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
