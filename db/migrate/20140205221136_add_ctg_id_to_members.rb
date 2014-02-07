class AddCtgIdToMembers < ActiveRecord::Migration
  def change
    add_column :members, :ctg_id, :integer
    add_index :members, :ctg_id
  end
end
