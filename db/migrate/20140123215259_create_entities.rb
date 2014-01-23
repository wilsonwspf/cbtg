class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :uf
      t.string :tel1
      t.string :tel2
      t.string :email
      t.string :endcorresp
      t.string :bairrocorresp
      t.string :cepcorresp
      t.string :cidadecorresp
      t.string :ufcorresp
      t.string :patrao
      t.string :fonerespatrao
      t.string :fonecompatrao
      t.string :celpatrao
      t.string :emailpatrao
      t.string :cnpj
      t.date :dtfundacao
      t.date :datafiliacaomtg

      t.timestamps
    end
  end
end
