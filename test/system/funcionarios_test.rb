require "application_system_test_case"

class FuncionariosTest < ApplicationSystemTestCase
  setup do
    @funcionario = funcionarios(:one)
  end

  test "visiting the index" do
    visit funcionarios_url
    assert_selector "h1", text: "Funcionarios"
  end

  test "should create funcionario" do
    visit funcionarios_url
    click_on "New funcionario"

    fill_in "Admissao", with: @funcionario.admissao
    fill_in "Cpf", with: @funcionario.cpf
    fill_in "Email", with: @funcionario.email
    fill_in "Empresa", with: @funcionario.empresa_id
    fill_in "Idade", with: @funcionario.idade
    fill_in "Nome", with: @funcionario.nome
    fill_in "Salario", with: @funcionario.salario
    fill_in "Setor", with: @funcionario.setor_id
    fill_in "Tel", with: @funcionario.tel
    click_on "Create Funcionario"

    assert_text "Funcionario was successfully created"
    click_on "Back"
  end

  test "should update Funcionario" do
    visit funcionario_url(@funcionario)
    click_on "Edit this funcionario", match: :first

    fill_in "Admissao", with: @funcionario.admissao
    fill_in "Cpf", with: @funcionario.cpf
    fill_in "Email", with: @funcionario.email
    fill_in "Empresa", with: @funcionario.empresa_id
    fill_in "Idade", with: @funcionario.idade
    fill_in "Nome", with: @funcionario.nome
    fill_in "Salario", with: @funcionario.salario
    fill_in "Setor", with: @funcionario.setor_id
    fill_in "Tel", with: @funcionario.tel
    click_on "Update Funcionario"

    assert_text "Funcionario was successfully updated"
    click_on "Back"
  end

  test "should destroy Funcionario" do
    visit funcionario_url(@funcionario)
    click_on "Destroy this funcionario", match: :first

    assert_text "Funcionario was successfully destroyed"
  end
end
