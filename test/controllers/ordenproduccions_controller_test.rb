require 'test_helper'

class OrdenproduccionsControllerTest < ActionController::TestCase
  setup do
    @ordenproduccion = ordenproduccions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordenproduccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordenproduccion" do
    assert_difference('Ordenproduccion.count') do
      post :create, ordenproduccion: { ancho: @ordenproduccion.ancho, cantidad: @ordenproduccion.cantidad, cliente_id: @ordenproduccion.cliente_id, corte: @ordenproduccion.corte, corte: @ordenproduccion.corte, descripcion: @ordenproduccion.descripcion, fechaprogramacion: @ordenproduccion.fechaprogramacion, largotendido: @ordenproduccion.largotendido, largotrazo: @ordenproduccion.largotrazo, numeropaquetes: @ordenproduccion.numeropaquetes, ordennumero: @ordenproduccion.ordennumero, prenda_id: @ordenproduccion.prenda_id, promediounidad: @ordenproduccion.promediounidad, referencia: @ordenproduccion.referencia, tela_id: @ordenproduccion.tela_id, tiqueteada: @ordenproduccion.tiqueteada, totalmetros: @ordenproduccion.totalmetros }
    end

    assert_redirected_to ordenproduccion_path(assigns(:ordenproduccion))
  end

  test "should show ordenproduccion" do
    get :show, id: @ordenproduccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordenproduccion
    assert_response :success
  end

  test "should update ordenproduccion" do
    patch :update, id: @ordenproduccion, ordenproduccion: { ancho: @ordenproduccion.ancho, cantidad: @ordenproduccion.cantidad, cliente_id: @ordenproduccion.cliente_id, corte: @ordenproduccion.corte, corte: @ordenproduccion.corte, descripcion: @ordenproduccion.descripcion, fechaprogramacion: @ordenproduccion.fechaprogramacion, largotendido: @ordenproduccion.largotendido, largotrazo: @ordenproduccion.largotrazo, numeropaquetes: @ordenproduccion.numeropaquetes, ordennumero: @ordenproduccion.ordennumero, prenda_id: @ordenproduccion.prenda_id, promediounidad: @ordenproduccion.promediounidad, referencia: @ordenproduccion.referencia, tela_id: @ordenproduccion.tela_id, tiqueteada: @ordenproduccion.tiqueteada, totalmetros: @ordenproduccion.totalmetros }
    assert_redirected_to ordenproduccion_path(assigns(:ordenproduccion))
  end

  test "should destroy ordenproduccion" do
    assert_difference('Ordenproduccion.count', -1) do
      delete :destroy, id: @ordenproduccion
    end

    assert_redirected_to ordenproduccions_path
  end
end
