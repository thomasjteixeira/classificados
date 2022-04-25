require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase

=begin

  test "usuario faz cadastro com dados validos" do
    visit "/"
    click_on "Cadastre-se"

    fill_in "Nome", with: "Darth Vader"
    fill_in "E-mail", with: "vader@imperio.com"
    fill_in "Senha", with: "minhasenha"
    fill_in "Confirmação da senha", with: "minha senha"

    click_on "Cadastrar"

    assert_text "Cadastro realizado com sucesso!"
  end

=begin
  test "usuario faz cadastro com dados invalidos" do
    visit "/"
    click_on "Cadastre-se"
    click_on "Cadastrar"

    assert_text "Erro ao salvar"
  end
=end
end