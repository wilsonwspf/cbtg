class AddCtgIdToPiquetes < ActiveRecord::Migration
  def change
    add_column :piquetes, :ctg_id, :integer
    add_index :piquetes, :ctg_id
  end
end
