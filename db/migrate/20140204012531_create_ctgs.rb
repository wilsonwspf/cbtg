class CreateCtgs < ActiveRecord::Migration
  def change
    create_table :ctgs do |t|
      t.string :name
      t.string :end
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :cep
      t.string :url
      t.string :email
      t.string :tel1
      t.string :tel2
      t.string :cel
      t.date :fundacao
      t.date :filiacao
      t.string :logo
      t.string :endcor
      t.string :bairrocor
      t.string :cepcor
      t.string :cidadecor
      t.string :ufcor
      t.string :cnpj
      t.text :obs

      t.timestamps
    end
  end
end
