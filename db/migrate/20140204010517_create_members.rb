class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :matricula
      t.date :filiacao
      t.date :nascimento
      t.integer :tipo
      t.string :natural
      t.string :uf
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :ufcid
      t.string :telres
      t.string :telfunc
      t.string :celular
      t.string :rg
      t.string :oexp
      t.string :cpf
      t.string :email
      t.string :conjuge
      t.date :nascconjuge
      t.string :picture
      t.text :obs

      t.timestamps
    end
  end
end
