class CreatePagamentos < ActiveRecord::Migration
  def change
    create_table :pagamentos do |t|
      t.date :vencimento
      t.string :quem
      t.decimal :valor
      t.date :dtpgto
      t.string :tipopgto

      t.timestamps
    end
  end
end
