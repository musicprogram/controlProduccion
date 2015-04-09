require 'test_helper'

class NombresControllerTest < ActionController::TestCase
  setup do
    @nombre = nombres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nombres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nombre" do
    assert_difference('Nombre.count') do
      post :create, nombre: { nombreinstructor: @nombre.nombreinstructor }
    end

    assert_redirected_to nombre_path(assigns(:nombre))
  end

  test "should show nombre" do
    get :show, id: @nombre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nombre
    assert_response :success
  end

  test "should update nombre" do
    patch :update, id: @nombre, nombre: { nombreinstructor: @nombre.nombreinstructor }
    assert_redirected_to nombre_path(assigns(:nombre))
  end

  test "should destroy nombre" do
    assert_difference('Nombre.count', -1) do
      delete :destroy, id: @nombre
    end

    assert_redirected_to nombres_path
  end
end
