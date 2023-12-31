# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_27_233000) do
  create_table "empresas", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "email"
    t.string "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "endereco_empresas", force: :cascade do |t|
    t.string "rua"
    t.string "num"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.integer "empresa_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_endereco_empresas_on_empresa_id"
  end

  create_table "endereco_funcionarios", force: :cascade do |t|
    t.string "rua"
    t.string "num"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.integer "funcionario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["funcionario_id"], name: "index_endereco_funcionarios_on_funcionario_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "email"
    t.string "tel"
    t.string "idade"
    t.float "salario"
    t.date "admissao"
    t.integer "empresa_id", null: false
    t.integer "setor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_funcionarios_on_empresa_id"
    t.index ["setor_id"], name: "index_funcionarios_on_setor_id"
  end

  create_table "setors", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "endereco_empresas", "empresas"
  add_foreign_key "endereco_funcionarios", "funcionarios"
  add_foreign_key "funcionarios", "empresas"
  add_foreign_key "funcionarios", "setors"
end
