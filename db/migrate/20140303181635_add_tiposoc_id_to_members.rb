class AddTiposocIdToMembers < ActiveRecord::Migration
  def change
    add_column :members, :tiposoc_id, :integer
    add_index :members, :tiposoc_id
  end
end
