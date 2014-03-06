class CreateOcurrences < ActiveRecord::Migration
  def change
    create_table :ocurrences do |t|
      t.date :data
      t.string :descricao

      t.timestamps
    end
  end
end
