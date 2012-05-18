require 'test_helper'

class AsistencesControllerTest < ActionController::TestCase
  setup do
    @asistence = asistences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asistences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asistence" do
    assert_difference('Asistence.count') do
      post :create, :asistence => @asistence.attributes
    end

    assert_redirected_to asistence_path(assigns(:asistence))
  end

  test "should show asistence" do
    get :show, :id => @asistence
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @asistence
    assert_response :success
  end

  test "should update asistence" do
    put :update, :id => @asistence, :asistence => @asistence.attributes
    assert_redirected_to asistence_path(assigns(:asistence))
  end

  test "should destroy asistence" do
    assert_difference('Asistence.count', -1) do
      delete :destroy, :id => @asistence
    end

    assert_redirected_to asistences_path
  end
end
