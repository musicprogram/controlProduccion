require 'test_helper'

class CuadroproduccionsControllerTest < ActionController::TestCase
  setup do
    @cuadroproduccion = cuadroproduccions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cuadroproduccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cuadroproduccion" do
    assert_difference('Cuadroproduccion.count') do
      post :create, cuadroproduccion: { anchotrazo: @cuadroproduccion.anchotrazo, cantidad: @cuadroproduccion.cantidad, fechacorte: @cuadroproduccion.fechacorte, fechaentradabodega: @cuadroproduccion.fechaentradabodega, fechaentregamodulo: @cuadroproduccion.fechaentregamodulo, fechatrazo: @cuadroproduccion.fechatrazo, instructor: @cuadroproduccion.instructor }
    end

    assert_redirected_to cuadroproduccion_path(assigns(:cuadroproduccion))
  end

  test "should show cuadroproduccion" do
    get :show, id: @cuadroproduccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cuadroproduccion
    assert_response :success
  end

  test "should update cuadroproduccion" do
    patch :update, id: @cuadroproduccion, cuadroproduccion: { anchotrazo: @cuadroproduccion.anchotrazo, cantidad: @cuadroproduccion.cantidad, fechacorte: @cuadroproduccion.fechacorte, fechaentradabodega: @cuadroproduccion.fechaentradabodega, fechaentregamodulo: @cuadroproduccion.fechaentregamodulo, fechatrazo: @cuadroproduccion.fechatrazo, instructor: @cuadroproduccion.instructor }
    assert_redirected_to cuadroproduccion_path(assigns(:cuadroproduccion))
  end

  test "should destroy cuadroproduccion" do
    assert_difference('Cuadroproduccion.count', -1) do
      delete :destroy, id: @cuadroproduccion
    end

    assert_redirected_to cuadroproduccions_path
  end
end
