class AddOcurrenceIdToMembers < ActiveRecord::Migration
  def change
    add_column :members, :ocurrence_id, :integer
    add_index :members, :ocurrence_id
  end
end
