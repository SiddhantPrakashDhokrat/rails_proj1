require 'test_helper'

class F1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f1 = f1s(:one)
  end

  test "should get index" do
    get f1s_url
    assert_response :success
  end

  test "should get new" do
    get new_f1_url
    assert_response :success
  end

  test "should create f1" do
    assert_difference('F1.count') do
      post f1s_url, params: { f1: { Email: @f1.Email, Name: @f1.Name, phone: @f1.phone } }
    end

    assert_redirected_to f1_url(F1.last)
  end

  test "should show f1" do
    get f1_url(@f1)
    assert_response :success
  end

  test "should get edit" do
    get edit_f1_url(@f1)
    assert_response :success
  end

  test "should update f1" do
    patch f1_url(@f1), params: { f1: { Email: @f1.Email, Name: @f1.Name, phone: @f1.phone } }
    assert_redirected_to f1_url(@f1)
  end

  test "should destroy f1" do
    assert_difference('F1.count', -1) do
      delete f1_url(@f1)
    end

    assert_redirected_to f1s_url
  end
end
