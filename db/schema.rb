# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090621184450) do

  create_table "contatos", :force => true do |t|
    t.string   "nome",       :null => false
    t.string   "email",      :null => false
    t.string   "telefone"
    t.string   "celular"
    t.string   "endereco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contatos", ["email"], :name => "index_contatos_on_email", :unique => true

  create_table "contatos_eventos", :id => false, :force => true do |t|
    t.integer "contato_id", :null => false
    t.integer "evento_id",  :null => false
  end

  add_index "contatos_eventos", ["contato_id", "evento_id"], :name => "index_contatos_eventos_on_contato_id_and_evento_id", :unique => true

  create_table "eventos", :force => true do |t|
    t.text     "descricao",  :null => false
    t.datetime "data_hora",  :null => false
    t.string   "local",      :null => false
    t.string   "titulo",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
