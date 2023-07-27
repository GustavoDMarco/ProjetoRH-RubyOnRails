require "application_system_test_case"

class EnderecoFuncionariosTest < ApplicationSystemTestCase
  setup do
    @endereco_funcionario = endereco_funcionarios(:one)
  end

  test "visiting the index" do
    visit endereco_funcionarios_url
    assert_selector "h1", text: "Endereco funcionarios"
  end

  test "should create endereco funcionario" do
    visit endereco_funcionarios_url
    click_on "New endereco funcionario"

    fill_in "Bairro", with: @endereco_funcionario.bairro
    fill_in "Cidade", with: @endereco_funcionario.cidade
    fill_in "Estado", with: @endereco_funcionario.estado
    fill_in "Funcionario", with: @endereco_funcionario.funcionario_id
    fill_in "Num", with: @endereco_funcionario.num
    fill_in "Rua", with: @endereco_funcionario.rua
    click_on "Create Endereco funcionario"

    assert_text "Endereco funcionario was successfully created"
    click_on "Back"
  end

  test "should update Endereco funcionario" do
    visit endereco_funcionario_url(@endereco_funcionario)
    click_on "Edit this endereco funcionario", match: :first

    fill_in "Bairro", with: @endereco_funcionario.bairro
    fill_in "Cidade", with: @endereco_funcionario.cidade
    fill_in "Estado", with: @endereco_funcionario.estado
    fill_in "Funcionario", with: @endereco_funcionario.funcionario_id
    fill_in "Num", with: @endereco_funcionario.num
    fill_in "Rua", with: @endereco_funcionario.rua
    click_on "Update Endereco funcionario"

    assert_text "Endereco funcionario was successfully updated"
    click_on "Back"
  end

  test "should destroy Endereco funcionario" do
    visit endereco_funcionario_url(@endereco_funcionario)
    click_on "Destroy this endereco funcionario", match: :first

    assert_text "Endereco funcionario was successfully destroyed"
  end
end
