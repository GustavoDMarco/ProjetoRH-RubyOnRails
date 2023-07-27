class Setor < ApplicationRecord
    has_many :funcionario, dependent: :destroy
    validates :nome, presence:true
end
