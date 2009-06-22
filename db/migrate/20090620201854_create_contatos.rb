class CreateContatos < ActiveRecord::Migration
  def self.up
    create_table :contatos do |t|
      t.string :nome, :null => false
      t.string :email, :null => false
      t.string :telefone
      t.string :celular
      t.string :endereco

      t.timestamps
    end

    add_index :contatos, :email, :unique => true

  end

  def self.down
    drop_table :contatos
  end
end

