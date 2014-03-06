class CreateSaloons < ActiveRecord::Migration
  def change
    create_table :saloons do |t|
      t.string :name

      t.timestamps
    end
  end
end
