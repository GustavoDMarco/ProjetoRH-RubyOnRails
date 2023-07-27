class CreateEnderecoEmpresas < ActiveRecord::Migration[7.0]
  def change
    create_table :endereco_empresas do |t|
      t.string :rua
      t.string :num
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.references :empresa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
