require 'test_helper'

class PelitosControllerTest < ActionController::TestCase
  setup do
    @pelito = pelitos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pelitos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pelito" do
    assert_difference('Pelito.count') do
      post :create, pelito: { fecha: @pelito.fecha, forma: @pelito.forma, grosor: @pelito.grosor }
    end

    assert_redirected_to pelito_path(assigns(:pelito))
  end

  test "should show pelito" do
    get :show, id: @pelito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pelito
    assert_response :success
  end

  test "should update pelito" do
    patch :update, id: @pelito, pelito: { fecha: @pelito.fecha, forma: @pelito.forma, grosor: @pelito.grosor }
    assert_redirected_to pelito_path(assigns(:pelito))
  end

  test "should destroy pelito" do
    assert_difference('Pelito.count', -1) do
      delete :destroy, id: @pelito
    end

    assert_redirected_to pelitos_path
  end
end
