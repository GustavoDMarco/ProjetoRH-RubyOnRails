require "test_helper"

class EnderecoFuncionariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @endereco_funcionario = endereco_funcionarios(:one)
  end

  test "should get index" do
    get endereco_funcionarios_url
    assert_response :success
  end

  test "should get new" do
    get new_endereco_funcionario_url
    assert_response :success
  end

  test "should create endereco_funcionario" do
    assert_difference("EnderecoFuncionario.count") do
      post endereco_funcionarios_url, params: { endereco_funcionario: { bairro: @endereco_funcionario.bairro, cidade: @endereco_funcionario.cidade, estado: @endereco_funcionario.estado, funcionario_id: @endereco_funcionario.funcionario_id, num: @endereco_funcionario.num, rua: @endereco_funcionario.rua } }
    end

    assert_redirected_to endereco_funcionario_url(EnderecoFuncionario.last)
  end

  test "should show endereco_funcionario" do
    get endereco_funcionario_url(@endereco_funcionario)
    assert_response :success
  end

  test "should get edit" do
    get edit_endereco_funcionario_url(@endereco_funcionario)
    assert_response :success
  end

  test "should update endereco_funcionario" do
    patch endereco_funcionario_url(@endereco_funcionario), params: { endereco_funcionario: { bairro: @endereco_funcionario.bairro, cidade: @endereco_funcionario.cidade, estado: @endereco_funcionario.estado, funcionario_id: @endereco_funcionario.funcionario_id, num: @endereco_funcionario.num, rua: @endereco_funcionario.rua } }
    assert_redirected_to endereco_funcionario_url(@endereco_funcionario)
  end

  test "should destroy endereco_funcionario" do
    assert_difference("EnderecoFuncionario.count", -1) do
      delete endereco_funcionario_url(@endereco_funcionario)
    end

    assert_redirected_to endereco_funcionarios_url
  end
end
