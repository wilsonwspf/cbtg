class CreateRails < ActiveRecord::Migration
  def change
    create_table :rails do |t|
      t.string :s

      t.timestamps
    end
  end
end
