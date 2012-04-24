require 'test_helper'

class MedewerkersControllerTest < ActionController::TestCase
  setup do
    @medewerker = medewerkers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medewerkers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medewerker" do
    assert_difference('Medewerker.count') do
      post :create, medewerker: @medewerker.attributes
    end

    assert_redirected_to medewerker_path(assigns(:medewerker))
  end

  test "should show medewerker" do
    get :show, id: @medewerker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medewerker
    assert_response :success
  end

  test "should update medewerker" do
    put :update, id: @medewerker, medewerker: @medewerker.attributes
    assert_redirected_to medewerker_path(assigns(:medewerker))
  end

  test "should destroy medewerker" do
    assert_difference('Medewerker.count', -1) do
      delete :destroy, id: @medewerker
    end

    assert_redirected_to medewerkers_path
  end
end
