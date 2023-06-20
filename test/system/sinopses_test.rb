require "application_system_test_case"

class SinopsesTest < ApplicationSystemTestCase
  setup do
    @sinopse = sinopses(:one)
  end

  test "visiting the index" do
    visit sinopses_url
    assert_selector "h1", text: "Sinopses"
  end

  test "should create sinopse" do
    visit sinopses_url
    click_on "New sinopse"

    fill_in "Livro", with: @sinopse.livro_id
    fill_in "Texto", with: @sinopse.texto
    click_on "Create Sinopse"

    assert_text "Sinopse foi criada com com sucesso"
    click_on "Back"
  end

  test "should update Sinopse" do
    visit sinopse_url(@sinopse)
    click_on "Edit this sinopse", match: :first

    fill_in "Livro", with: @sinopse.livro_id
    fill_in "Texto", with: @sinopse.texto
    click_on "Update Sinopse"

    assert_text "Sinopse foi atualizada com sucesso"
    click_on "Back"
  end

  test "should destroy Sinopse" do
    visit sinopse_url(@sinopse)
    click_on "Destroy this sinopse", match: :first

    assert_text "Sinopse foi apagada com sucesso"
  end
end
