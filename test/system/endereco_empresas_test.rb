require "application_system_test_case"

class EnderecoEmpresasTest < ApplicationSystemTestCase
  setup do
    @endereco_empresa = endereco_empresas(:one)
  end

  test "visiting the index" do
    visit endereco_empresas_url
    assert_selector "h1", text: "Endereco empresas"
  end

  test "should create endereco empresa" do
    visit endereco_empresas_url
    click_on "New endereco empresa"

    fill_in "Bairro", with: @endereco_empresa.bairro
    fill_in "Cidade", with: @endereco_empresa.cidade
    fill_in "Empresa", with: @endereco_empresa.empresa_id
    fill_in "Estado", with: @endereco_empresa.estado
    fill_in "Num", with: @endereco_empresa.num
    fill_in "Rua", with: @endereco_empresa.rua
    click_on "Create Endereco empresa"

    assert_text "Endereco empresa was successfully created"
    click_on "Back"
  end

  test "should update Endereco empresa" do
    visit endereco_empresa_url(@endereco_empresa)
    click_on "Edit this endereco empresa", match: :first

    fill_in "Bairro", with: @endereco_empresa.bairro
    fill_in "Cidade", with: @endereco_empresa.cidade
    fill_in "Empresa", with: @endereco_empresa.empresa_id
    fill_in "Estado", with: @endereco_empresa.estado
    fill_in "Num", with: @endereco_empresa.num
    fill_in "Rua", with: @endereco_empresa.rua
    click_on "Update Endereco empresa"

    assert_text "Endereco empresa was successfully updated"
    click_on "Back"
  end

  test "should destroy Endereco empresa" do
    visit endereco_empresa_url(@endereco_empresa)
    click_on "Destroy this endereco empresa", match: :first

    assert_text "Endereco empresa was successfully destroyed"
  end
end
