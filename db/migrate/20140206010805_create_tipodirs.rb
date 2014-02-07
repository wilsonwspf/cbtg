class CreateTipodirs < ActiveRecord::Migration
  def change
    create_table :tipodirs do |t|
      t.string :name

      t.timestamps
    end
  end
end
