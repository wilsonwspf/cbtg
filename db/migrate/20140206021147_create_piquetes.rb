class CreatePiquetes < ActiveRecord::Migration
  def change
    create_table :piquetes do |t|
      t.string :name

      t.timestamps
    end
  end
end
