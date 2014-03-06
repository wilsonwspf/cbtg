class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :name
      t.date :dataini
      t.date :datafim
      t.string :imagem
      t.string :local
      t.string :cidade
      t.string :uf

      t.timestamps
    end
  end
end
