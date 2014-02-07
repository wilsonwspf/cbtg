class CreateTiposocs < ActiveRecord::Migration
  def change
    create_table :tiposocs do |t|
      t.string :name

      t.timestamps
    end
  end
end
