class CreateEnderecoFuncionarios < ActiveRecord::Migration[7.0]
  def change
    create_table :endereco_funcionarios do |t|
      t.string :rua
      t.string :num
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.references :funcionario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
