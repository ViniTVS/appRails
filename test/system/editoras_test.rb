require "application_system_test_case"

class EditorasTest < ApplicationSystemTestCase
  setup do
    @editora = editoras(:one)
  end

  test "visiting the index" do
    visit editoras_url
    assert_selector "h1", text: "Editoras"
  end

  test "should create editora" do
    visit editoras_url
    click_on "New editora"

    fill_in "Nome", with: @editora.nome
    click_on "Create Editora"

    assert_text "Editora was successfully created"
    click_on "Back"
  end

  test "should update Editora" do
    visit editora_url(@editora)
    click_on "Edit this editora", match: :first

    fill_in "Nome", with: @editora.nome
    click_on "Update Editora"

    assert_text "Editora was successfully updated"
    click_on "Back"
  end

  test "should destroy Editora" do
    visit editora_url(@editora)
    click_on "Destroy this editora", match: :first

    assert_text "Editora was successfully destroyed"
  end
end
