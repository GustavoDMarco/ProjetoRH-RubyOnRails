json.extract! endereco_funcionario, :id, :rua, :num, :bairro, :cidade, :estado, :funcionario_id, :created_at, :updated_at
json.url endereco_funcionario_url(endereco_funcionario, format: :json)
