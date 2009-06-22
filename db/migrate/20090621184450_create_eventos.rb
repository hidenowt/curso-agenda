class CreateEventos < ActiveRecord::Migration

  def self.up
    create_table :eventos do |t|
      t.text :descricao, :null => false
      t.datetime :data_hora, :null => false
      t.string :local, :null => false
      t.string :titulo, :null => false

      t.timestamps
    end

    create_table :contatos_eventos, :id => false do |t|
      t.integer :contato_id, :null => false
      t.integer :evento_id, :null => false
    end

    add_index :contatos_eventos,
            [ :contato_id, :evento_id ], :unique => true

  end

  def self.down
    drop_table :contatos_eventos
    drop_table :eventos
  end

end

