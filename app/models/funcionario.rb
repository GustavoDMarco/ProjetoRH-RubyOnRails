class Funcionario < ApplicationRecord
  belongs_to :empresa
  belongs_to :setor
  has_one :endereco_funcionario, :dependent => :destroy
  accepts_nested_attributes_for :endereco_funcionario, reject_if: :all_blank
  attr_accessor :rua, :num, :bairro, :cidade, :estado

  validates :nome, :cpf,:idade, :email, :tel, :salario, :admissao, :endereco_funcionario, presence: true
end
