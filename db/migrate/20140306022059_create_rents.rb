class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.date :data
      t.string :saloon_id
      t.float :valor
      t.string :contato
      t.string :datapgto

      t.timestamps
    end
  end
end
