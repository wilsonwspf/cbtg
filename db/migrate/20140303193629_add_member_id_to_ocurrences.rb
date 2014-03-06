class AddMemberIdToOcurrences < ActiveRecord::Migration
  def change
    add_column :ocurrences, :member_id, :integer
    add_index :ocurrences, :member_id
  end
end
