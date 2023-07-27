json.extract! endereco_empresa, :id, :rua, :num, :bairro, :cidade, :estado, :empresa_id, :created_at, :updated_at
json.url endereco_empresa_url(endereco_empresa, format: :json)
