class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :matricula
      t.date :dtmatricula
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :uf
      t.string :telefone
      t.string :celular
      t.string :email
      t.date :dtnasc
      t.string :natural
      t.string :naturaluf
      t.string :conjuge
      t.date :nascconj
      t.string :codbarra

      t.timestamps
    end
  end
end
