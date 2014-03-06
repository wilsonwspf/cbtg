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

ActiveRecord::Schema.define(version: 20140306202122) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "idadeini"
    t.integer  "idadefim"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "directors", force: true do |t|
    t.integer  "member_id"
    t.integer  "function_id"
    t.date     "dataini"
    t.date     "datafim"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventos", force: true do |t|
    t.string   "name"
    t.date     "dataini"
    t.date     "datafim"
    t.string   "imagem"
    t.string   "local"
    t.string   "cidade"
    t.string   "uf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "functions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupos", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "file"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.integer  "width"
    t.integer  "height"
    t.boolean  "retina",         default: false
    t.string   "upload_name"
    t.string   "secure_random"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["imageable_id", "imageable_type"], name: "index_images_on_imageable_id_and_imageable_type"

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
    t.integer  "tiposoc_id"
    t.integer  "ocurrence_id"
  end

  add_index "members", ["ctg_id"], name: "index_members_on_ctg_id"
  add_index "members", ["ocurrence_id"], name: "index_members_on_ocurrence_id"
  add_index "members", ["tiposoc_id"], name: "index_members_on_tiposoc_id"

  create_table "modalidades", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "ocurrences", force: true do |t|
    t.date     "data"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "member_id"
  end

  add_index "ocurrences", ["member_id"], name: "index_ocurrences_on_member_id"

  create_table "pagamentos", force: true do |t|
    t.date     "vencimento"
    t.string   "quem"
    t.decimal  "valor"
    t.date     "dtpgto"
    t.string   "tipopgto"
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

  create_table "provas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recebimentos", force: true do |t|
    t.date     "vencimento"
    t.string   "quem"
    t.decimal  "valor"
    t.date     "dtpgto"
    t.string   "contato"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rents", force: true do |t|
    t.date     "data"
    t.string   "saloon_id"
    t.float    "valor"
    t.string   "contato"
    t.string   "datapgto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "saloons", force: true do |t|
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
