class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :name

      t.timestamps
    end
  end
end
