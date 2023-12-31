require "application_system_test_case"

class LivrosTest < ApplicationSystemTestCase
  setup do
    @livro = livros(:one)
  end

  test "visiting the index" do
    visit livros_url
    assert_selector "h1", text: "Livros"
  end

  test "should create livro" do
    visit livros_url
    click_on "New livro"

    fill_in "Ano", with: @livro.ano
    fill_in "Editora", with: @livro.editora_id
    fill_in "Nome", with: @livro.nome
    click_on "Create Livro"

    assert_text "Livro foi criada com com sucesso"
    click_on "Back"
  end

  test "should update Livro" do
    visit livro_url(@livro)
    click_on "Edit this livro", match: :first

    fill_in "Ano", with: @livro.ano
    fill_in "Editora", with: @livro.editora_id
    fill_in "Nome", with: @livro.nome
    click_on "Update Livro"

    assert_text "Livro foi atualizada com sucesso"
    click_on "Back"
  end

  test "should destroy Livro" do
    visit livro_url(@livro)
    click_on "Destroy this livro", match: :first

    assert_text "Livro foi apagada com sucesso"
  end
end
