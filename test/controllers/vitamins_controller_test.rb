require 'test_helper'

class VitaminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vitamin = vitamins(:one)
  end

  test "should get index" do
    get vitamins_url
    assert_response :success
  end

  test "should get new" do
    get new_vitamin_url
    assert_response :success
  end

  test "should create vitamin" do
    assert_difference('Vitamin.count') do
      post vitamins_url, params: { vitamin: { content: @vitamin.content, user_id: @vitamin.user_id } }
    end

    assert_redirected_to vitamin_url(Vitamin.last)
  end

  test "should show vitamin" do
    get vitamin_url(@vitamin)
    assert_response :success
  end

  test "should get edit" do
    get edit_vitamin_url(@vitamin)
    assert_response :success
  end

  test "should update vitamin" do
    patch vitamin_url(@vitamin), params: { vitamin: { content: @vitamin.content, user_id: @vitamin.user_id } }
    assert_redirected_to vitamin_url(@vitamin)
  end

  test "should destroy vitamin" do
    assert_difference('Vitamin.count', -1) do
      delete vitamin_url(@vitamin)
    end

    assert_redirected_to vitamins_url
  end
end
