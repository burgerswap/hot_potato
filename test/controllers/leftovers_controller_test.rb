require 'test_helper'

class LeftoversControllerTest < ActionController::TestCase
  setup do
    @leftover = leftovers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leftovers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leftover" do
    assert_difference('Leftover.count') do
      post :create, leftover: { address: @leftover.address, available_from: @leftover.available_from, available_to: @leftover.available_to, food_type: @leftover.food_type, location: @leftover.location, pincode: @leftover.pincode, quantity: @leftover.quantity, status: @leftover.status, title: @leftover.title }
    end

    assert_redirected_to leftover_path(assigns(:leftover))
  end

  test "should show leftover" do
    get :show, id: @leftover
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leftover
    assert_response :success
  end

  test "should update leftover" do
    patch :update, id: @leftover, leftover: { address: @leftover.address, available_from: @leftover.available_from, available_to: @leftover.available_to, food_type: @leftover.food_type, location: @leftover.location, pincode: @leftover.pincode, quantity: @leftover.quantity, status: @leftover.status, title: @leftover.title }
    assert_redirected_to leftover_path(assigns(:leftover))
  end

  test "should destroy leftover" do
    assert_difference('Leftover.count', -1) do
      delete :destroy, id: @leftover
    end

    assert_redirected_to leftovers_path
  end
end
