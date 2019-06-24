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

ActiveRecord::Schema.define(version: 2019_06_24_114310) do

  create_table "alunos", force: :cascade do |t|
    t.string "n_matricula"
    t.string "nome_aluno"
    t.integer "curso_id"
    t.integer "periodo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_alunos_on_curso_id"
  end

  create_table "campus", force: :cascade do |t|
    t.string "nome_campus"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome_curso"
    t.integer "campus_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campus_id"], name: "index_cursos_on_campus_id"
  end

  create_table "professors", force: :cascade do |t|
    t.integer "n_matricula"
    t.string "nome_professor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projetos", force: :cascade do |t|
    t.integer "numero"
    t.string "nome_projeto"
    t.string "descricao"
    t.integer "professor_id"
    t.datetime "data_inicio"
    t.datetime "data_final"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_id"], name: "index_projetos_on_professor_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vinculo_aluno_projetos", force: :cascade do |t|
    t.integer "aluno_id"
    t.integer "projeto_id"
    t.date "data_inicio"
    t.date "data_final"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_vinculo_aluno_projetos_on_aluno_id"
    t.index ["projeto_id"], name: "index_vinculo_aluno_projetos_on_projeto_id"
  end

  create_table "vinculo_professor_projetos", force: :cascade do |t|
    t.integer "projeto_id"
    t.integer "professor_id"
    t.date "data_inicio"
    t.date "data_final"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_id"], name: "index_vinculo_professor_projetos_on_professor_id"
    t.index ["projeto_id"], name: "index_vinculo_professor_projetos_on_projeto_id"
  end

end
