require 'test_helper'

class PrendasControllerTest < ActionController::TestCase
  setup do
    @prenda = prendas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prendas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prenda" do
    assert_difference('Prenda.count') do
      post :create, prenda: { prenda: @prenda.prenda }
    end

    assert_redirected_to prenda_path(assigns(:prenda))
  end

  test "should show prenda" do
    get :show, id: @prenda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prenda
    assert_response :success
  end

  test "should update prenda" do
    patch :update, id: @prenda, prenda: { prenda: @prenda.prenda }
    assert_redirected_to prenda_path(assigns(:prenda))
  end

  test "should destroy prenda" do
    assert_difference('Prenda.count', -1) do
      delete :destroy, id: @prenda
    end

    assert_redirected_to prendas_path
  end
end
