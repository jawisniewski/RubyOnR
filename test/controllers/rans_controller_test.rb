require 'test_helper'

class RansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ran = rans(:one)
  end

  test "should get index" do
    get rans_url
    assert_response :success
  end

  test "should get new" do
    get new_ran_url
    assert_response :success
  end

  test "should create ran" do
    assert_difference('Ran.count') do
      post rans_url, params: { ran: { cars_id: @ran.cars_id, name: @ran.name } }
    end

    assert_redirected_to ran_url(Ran.last)
  end

  test "should show ran" do
    get ran_url(@ran)
    assert_response :success
  end

  test "should get edit" do
    get edit_ran_url(@ran)
    assert_response :success
  end

  test "should update ran" do
    patch ran_url(@ran), params: { ran: { cars_id: @ran.cars_id, name: @ran.name } }
    assert_redirected_to ran_url(@ran)
  end

  test "should destroy ran" do
    assert_difference('Ran.count', -1) do
      delete ran_url(@ran)
    end

    assert_redirected_to rans_url
  end
end
