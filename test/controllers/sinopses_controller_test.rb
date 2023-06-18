require "test_helper"

class SinopsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sinopse = sinopses(:one)
  end

  test "should get index" do
    get sinopses_url
    assert_response :success
  end

  test "should get new" do
    get new_sinopse_url
    assert_response :success
  end

  test "should create sinopse" do
    assert_difference("Sinopse.count") do
      post sinopses_url, params: { sinopse: { livro_id: @sinopse.livro_id, texto: @sinopse.texto } }
    end

    assert_redirected_to sinopse_url(Sinopse.last)
  end

  test "should show sinopse" do
    get sinopse_url(@sinopse)
    assert_response :success
  end

  test "should get edit" do
    get edit_sinopse_url(@sinopse)
    assert_response :success
  end

  test "should update sinopse" do
    patch sinopse_url(@sinopse), params: { sinopse: { livro_id: @sinopse.livro_id, texto: @sinopse.texto } }
    assert_redirected_to sinopse_url(@sinopse)
  end

  test "should destroy sinopse" do
    assert_difference("Sinopse.count", -1) do
      delete sinopse_url(@sinopse)
    end

    assert_redirected_to sinopses_url
  end
end
