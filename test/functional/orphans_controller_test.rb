require 'test_helper'

class OrphansControllerTest < ActionController::TestCase
  setup do
    @orphan = orphans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orphans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orphan" do
    assert_difference('Orphan.count') do
      post :create, orphan: { description: @orphan.description, latitude: @orphan.latitude, longitude: @orphan.longitude }
    end

    assert_redirected_to orphan_path(assigns(:orphan))
  end

  test "should show orphan" do
    get :show, id: @orphan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orphan
    assert_response :success
  end

  test "should update orphan" do
    put :update, id: @orphan, orphan: { description: @orphan.description, latitude: @orphan.latitude, longitude: @orphan.longitude }
    assert_redirected_to orphan_path(assigns(:orphan))
  end

  test "should destroy orphan" do
    assert_difference('Orphan.count', -1) do
      delete :destroy, id: @orphan
    end

    assert_redirected_to orphans_path
  end
end
