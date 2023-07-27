class CreateFuncionarios < ActiveRecord::Migration[7.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.string :email
      t.string :tel
      t.string :idade
      t.float :salario
      t.date :admissao
      t.references :empresa, null: false, foreign_key: true
      t.references :setor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
