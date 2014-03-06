class CreateRecebimentos < ActiveRecord::Migration
  def change
    create_table :recebimentos do |t|
      t.date :vencimento
      t.string :quem
      t.decimal :valor
      t.date :dtpgto
      t.string :contato

      t.timestamps
    end
  end
end
