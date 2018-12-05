class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :endereco
      t.string :cpf
      t.string :rg
      t.string :phone
      t.string :data_cadastro
      t.string :data_cancelamento
      t.string :debito

      t.timestamps
    end
  end
end
