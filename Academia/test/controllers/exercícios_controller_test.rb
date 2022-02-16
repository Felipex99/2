require 'test_helper'

class ExercíciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exercício = exercícios(:one)
  end

  test "should get index" do
    get exercícios_url
    assert_response :success
  end

  test "should get new" do
    get new_exercício_url
    assert_response :success
  end

  test "should create exercício" do
    assert_difference('Exercício.count') do
      post exercícios_url, params: { exercício: { modalidade: @exercício.modalidade, valor: @exercício.valor } }
    end

    assert_redirected_to exercício_url(Exercício.last)
  end

  test "should show exercício" do
    get exercício_url(@exercício)
    assert_response :success
  end

  test "should get edit" do
    get edit_exercício_url(@exercício)
    assert_response :success
  end

  test "should update exercício" do
    patch exercício_url(@exercício), params: { exercício: { modalidade: @exercício.modalidade, valor: @exercício.valor } }
    assert_redirected_to exercício_url(@exercício)
  end

  test "should destroy exercício" do
    assert_difference('Exercício.count', -1) do
      delete exercício_url(@exercício)
    end

    assert_redirected_to exercícios_url
  end
end
