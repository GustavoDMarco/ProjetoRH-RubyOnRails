require "test_helper"

class EnderecoEmpresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @endereco_empresa = endereco_empresas(:one)
  end

  test "should get index" do
    get endereco_empresas_url
    assert_response :success
  end

  test "should get new" do
    get new_endereco_empresa_url
    assert_response :success
  end

  test "should create endereco_empresa" do
    assert_difference("EnderecoEmpresa.count") do
      post endereco_empresas_url, params: { endereco_empresa: { bairro: @endereco_empresa.bairro, cidade: @endereco_empresa.cidade, empresa_id: @endereco_empresa.empresa_id, estado: @endereco_empresa.estado, num: @endereco_empresa.num, rua: @endereco_empresa.rua } }
    end

    assert_redirected_to endereco_empresa_url(EnderecoEmpresa.last)
  end

  test "should show endereco_empresa" do
    get endereco_empresa_url(@endereco_empresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_endereco_empresa_url(@endereco_empresa)
    assert_response :success
  end

  test "should update endereco_empresa" do
    patch endereco_empresa_url(@endereco_empresa), params: { endereco_empresa: { bairro: @endereco_empresa.bairro, cidade: @endereco_empresa.cidade, empresa_id: @endereco_empresa.empresa_id, estado: @endereco_empresa.estado, num: @endereco_empresa.num, rua: @endereco_empresa.rua } }
    assert_redirected_to endereco_empresa_url(@endereco_empresa)
  end

  test "should destroy endereco_empresa" do
    assert_difference("EnderecoEmpresa.count", -1) do
      delete endereco_empresa_url(@endereco_empresa)
    end

    assert_redirected_to endereco_empresas_url
  end
end
