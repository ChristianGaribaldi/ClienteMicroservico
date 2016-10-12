class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :email
      t.string :rua
      t.integer :numero
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep

      t.timestamps null: false
    end
  end
end
