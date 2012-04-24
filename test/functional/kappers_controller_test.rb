require 'test_helper'

class KappersControllerTest < ActionController::TestCase
  setup do
    @kapper = kappers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kappers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kapper" do
    assert_difference('Kapper.count') do
      post :create, kapper: @kapper.attributes
    end

    assert_redirected_to kapper_path(assigns(:kapper))
  end

  test "should show kapper" do
    get :show, id: @kapper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kapper
    assert_response :success
  end

  test "should update kapper" do
    put :update, id: @kapper, kapper: @kapper.attributes
    assert_redirected_to kapper_path(assigns(:kapper))
  end

  test "should destroy kapper" do
    assert_difference('Kapper.count', -1) do
      delete :destroy, id: @kapper
    end

    assert_redirected_to kappers_path
  end
end
