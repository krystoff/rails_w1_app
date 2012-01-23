require 'test_helper'

class StormsControllerTest < ActionController::TestCase
  setup do
    @storm = storms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storm" do
    assert_difference('Storm.count') do
      post :create, storm: @storm.attributes
    end

    assert_redirected_to storm_path(assigns(:storm))
  end

  test "should show storm" do
    get :show, id: @storm.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storm.to_param
    assert_response :success
  end

  test "should update storm" do
    put :update, id: @storm.to_param, storm: @storm.attributes
    assert_redirected_to storm_path(assigns(:storm))
  end

  test "should destroy storm" do
    assert_difference('Storm.count', -1) do
      delete :destroy, id: @storm.to_param
    end

    assert_redirected_to storms_path
  end
end
