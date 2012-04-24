require 'test_helper'

class AfspraaksControllerTest < ActionController::TestCase
  setup do
    @afspraak = afspraaks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:afspraaks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create afspraak" do
    assert_difference('Afspraak.count') do
      post :create, afspraak: @afspraak.attributes
    end

    assert_redirected_to afspraak_path(assigns(:afspraak))
  end

  test "should show afspraak" do
    get :show, id: @afspraak
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @afspraak
    assert_response :success
  end

  test "should update afspraak" do
    put :update, id: @afspraak, afspraak: @afspraak.attributes
    assert_redirected_to afspraak_path(assigns(:afspraak))
  end

  test "should destroy afspraak" do
    assert_difference('Afspraak.count', -1) do
      delete :destroy, id: @afspraak
    end

    assert_redirected_to afspraaks_path
  end
end
