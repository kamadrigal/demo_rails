require 'test_helper'

class ParteCuerposControllerTest < ActionController::TestCase
  setup do
    @parte_cuerpo = parte_cuerpos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parte_cuerpos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parte_cuerpo" do
    assert_difference('ParteCuerpo.count') do
      post :create, parte_cuerpo: { nombre: @parte_cuerpo.nombre }
    end

    assert_redirected_to parte_cuerpo_path(assigns(:parte_cuerpo))
  end

  test "should show parte_cuerpo" do
    get :show, id: @parte_cuerpo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parte_cuerpo
    assert_response :success
  end

  test "should update parte_cuerpo" do
    patch :update, id: @parte_cuerpo, parte_cuerpo: { nombre: @parte_cuerpo.nombre }
    assert_redirected_to parte_cuerpo_path(assigns(:parte_cuerpo))
  end

  test "should destroy parte_cuerpo" do
    assert_difference('ParteCuerpo.count', -1) do
      delete :destroy, id: @parte_cuerpo
    end

    assert_redirected_to parte_cuerpos_path
  end
end
