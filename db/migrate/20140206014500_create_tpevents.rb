class CreateTpevents < ActiveRecord::Migration
  def change
    create_table :tpevents do |t|
      t.string :name

      t.timestamps
    end
  end
end
