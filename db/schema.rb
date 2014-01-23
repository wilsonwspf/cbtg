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

ActiveRecord::Schema.define(version: 20140123215259) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ctgs", force: true do |t|
    t.string   "name"
    t.string   "matricula"
    t.date     "dtmatricula"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "uf"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.string   "url"
    t.string   "cnpj"
    t.date     "dtfundacao"
    t.string   "patrao"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rt_id"
  end

  add_index "ctgs", ["rt_id"], name: "index_ctgs_on_rt_id"

  create_table "entities", force: true do |t|
    t.string   "name"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "uf"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "email"
    t.string   "endcorresp"
    t.string   "bairrocorresp"
    t.string   "cepcorresp"
    t.string   "cidadecorresp"
    t.string   "ufcorresp"
    t.string   "patrao"
    t.string   "fonerespatrao"
    t.string   "fonecompatrao"
    t.string   "celpatrao"
    t.string   "emailpatrao"
    t.string   "cnpj"
    t.date     "dtfundacao"
    t.date     "datafiliacaomtg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventos", force: true do |t|
    t.string   "name"
    t.date     "dataini"
    t.date     "datafim"
    t.string   "local"
    t.string   "cidade"
    t.string   "uf"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link"
    t.string   "imagem"
  end

  create_table "functions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "matricula"
    t.date     "dtmatricula"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "uf"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.date     "dtnasc"
    t.string   "natural"
    t.string   "naturaluf"
    t.string   "conjuge"
    t.date     "nascconj"
    t.string   "codbarra"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ctg_id"
    t.string   "picture"
  end

  add_index "members", ["ctg_id"], name: "index_members_on_ctg_id"

  create_table "modals", force: true do |t|
    t.string   "name"
    t.integer  "tpeve_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtgs", force: true do |t|
    t.string   "name"
    t.string   "matricula"
    t.date     "dtmatricula"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "uf"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.string   "url"
    t.string   "cnpj"
    t.date     "dtfundacao"
    t.string   "presidente"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provas", force: true do |t|
    t.string   "name"
    t.text     "obs"
    t.integer  "modal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails", force: true do |t|
    t.string   "s"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", force: true do |t|
    t.integer  "mtg_id"
    t.integer  "rt_id"
    t.integer  "ctg_id"
    t.integer  "member_id"
    t.integer  "evento_id"
    t.integer  "modal_id"
    t.integer  "prova_id"
    t.integer  "category_id"
    t.integer  "tbgrupo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rts", force: true do |t|
    t.string   "name"
    t.string   "matricula"
    t.date     "dtmatricula"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "uf"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.string   "url"
    t.string   "cnpj"
    t.date     "dtfundacao"
    t.string   "coordenador"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mtg_id"
  end

  add_index "rts", ["mtg_id"], name: "index_rts_on_mtg_id"

  create_table "tbgrupos", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "tpeves", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
