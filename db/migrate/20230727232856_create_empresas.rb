class CreateEmpresas < ActiveRecord::Migration[7.0]
  def change
    create_table :empresas do |t|
      t.string :nome
      t.string :cnpj
      t.string :email
      t.string :tel

      t.timestamps
    end
  end
end
