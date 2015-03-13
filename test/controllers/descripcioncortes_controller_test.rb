require 'test_helper'

class DescripcioncortesControllerTest < ActionController::TestCase
  setup do
    @descripcioncorte = descripcioncortes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:descripcioncortes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create descripcioncorte" do
    assert_difference('Descripcioncorte.count') do
      post :create, descripcioncorte: { capas: @descripcioncorte.capas, color: @descripcioncorte.color, ordenproduccion_id: @descripcioncorte.ordenproduccion_id, tallacantidad: @descripcioncorte.tallacantidad, tallal: @descripcioncorte.tallal, tallam: @descripcioncorte.tallam, tallas: @descripcioncorte.tallas, tallaxl: @descripcioncorte.tallaxl, tallaxs: @descripcioncorte.tallaxs }
    end

    assert_redirected_to descripcioncorte_path(assigns(:descripcioncorte))
  end

  test "should show descripcioncorte" do
    get :show, id: @descripcioncorte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @descripcioncorte
    assert_response :success
  end

  test "should update descripcioncorte" do
    patch :update, id: @descripcioncorte, descripcioncorte: { capas: @descripcioncorte.capas, color: @descripcioncorte.color, ordenproduccion_id: @descripcioncorte.ordenproduccion_id, tallacantidad: @descripcioncorte.tallacantidad, tallal: @descripcioncorte.tallal, tallam: @descripcioncorte.tallam, tallas: @descripcioncorte.tallas, tallaxl: @descripcioncorte.tallaxl, tallaxs: @descripcioncorte.tallaxs }
    assert_redirected_to descripcioncorte_path(assigns(:descripcioncorte))
  end

  test "should destroy descripcioncorte" do
    assert_difference('Descripcioncorte.count', -1) do
      delete :destroy, id: @descripcioncorte
    end

    assert_redirected_to descripcioncortes_path
  end
end
