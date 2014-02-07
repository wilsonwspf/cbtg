class AddMtgIdToRts < ActiveRecord::Migration
  def change
    add_column :rts, :mtg_id, :integer
    add_index :rts, :mtg_id
  end
end
