class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.integer :member_id
      t.integer :function_id
      t.date :dataini
      t.date :datafim
      t.text :obs

      t.timestamps
    end
  end
end
