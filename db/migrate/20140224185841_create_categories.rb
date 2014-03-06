class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :idadeini
      t.integer :idadefim

      t.timestamps
    end
  end
end
