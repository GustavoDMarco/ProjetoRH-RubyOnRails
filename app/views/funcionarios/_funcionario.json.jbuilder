json.extract! funcionario, :id, :nome, :cpf, :email, :tel, :idade, :salario, :admissao, :empresa_id, :setor_id, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
