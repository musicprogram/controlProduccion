require 'test_helper'

class OrdentercerosControllerTest < ActionController::TestCase
  setup do
    @ordentercero = ordenterceros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordenterceros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordentercero" do
    assert_difference('Ordentercero.count') do
      post :create, ordentercero: { cantidad: @ordentercero.cantidad, color_id: @ordentercero.color_id, direccion: @ordentercero.direccion, email: @ordentercero.email, fechaingreso: @ordentercero.fechaingreso, fechasalida: @ordentercero.fechasalida, nombreproveedor: @ordentercero.nombreproveedor, numeroop: @ordentercero.numeroop, observacion: @ordentercero.observacion, pieza: @ordentercero.pieza, proceso_id: @ordentercero.proceso_id, referencia: @ordentercero.referencia, responsable: @ordentercero.responsable, telefono: @ordentercero.telefono, totalunidad: @ordentercero.totalunidad, transportador: @ordentercero.transportador }
    end

    assert_redirected_to ordentercero_path(assigns(:ordentercero))
  end

  test "should show ordentercero" do
    get :show, id: @ordentercero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordentercero
    assert_response :success
  end

  test "should update ordentercero" do
    patch :update, id: @ordentercero, ordentercero: { cantidad: @ordentercero.cantidad, color_id: @ordentercero.color_id, direccion: @ordentercero.direccion, email: @ordentercero.email, fechaingreso: @ordentercero.fechaingreso, fechasalida: @ordentercero.fechasalida, nombreproveedor: @ordentercero.nombreproveedor, numeroop: @ordentercero.numeroop, observacion: @ordentercero.observacion, pieza: @ordentercero.pieza, proceso_id: @ordentercero.proceso_id, referencia: @ordentercero.referencia, responsable: @ordentercero.responsable, telefono: @ordentercero.telefono, totalunidad: @ordentercero.totalunidad, transportador: @ordentercero.transportador }
    assert_redirected_to ordentercero_path(assigns(:ordentercero))
  end

  test "should destroy ordentercero" do
    assert_difference('Ordentercero.count', -1) do
      delete :destroy, id: @ordentercero
    end

    assert_redirected_to ordenterceros_path
  end
end
