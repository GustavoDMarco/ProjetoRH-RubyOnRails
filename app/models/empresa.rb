class Empresa < ApplicationRecord
    has_one :endereco_empresa, :dependent => :destroy
    has_many :funcionario, dependent: :destroy
    accepts_nested_attributes_for :endereco_empresa, reject_if: :all_blank
    validates :nome, :cnpj, :email, :tel, :endereco_empresa, presence: true
end
