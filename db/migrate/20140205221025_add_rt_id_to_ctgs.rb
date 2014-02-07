class AddRtIdToCtgs < ActiveRecord::Migration
  def change
    add_column :ctgs, :rt_id, :integer
    add_index :ctgs, :rt_id
  end
end
