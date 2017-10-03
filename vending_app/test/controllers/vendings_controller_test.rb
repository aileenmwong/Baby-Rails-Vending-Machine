require 'test_helper'

class VendingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vending = vendings(:one)
  end

  test "should get index" do
    get vendings_url
    assert_response :success
  end

  test "should get new" do
    get new_vending_url
    assert_response :success
  end

  test "should create vending" do
    assert_difference('Vending.count') do
      post vendings_url, params: { vending: { code: @vending.code, kind_id: @vending.kind_id, price: @vending.price, snack: @vending.snack } }
    end

    assert_redirected_to vending_url(Vending.last)
  end

  test "should show vending" do
    get vending_url(@vending)
    assert_response :success
  end

  test "should get edit" do
    get edit_vending_url(@vending)
    assert_response :success
  end

  test "should update vending" do
    patch vending_url(@vending), params: { vending: { code: @vending.code, kind_id: @vending.kind_id, price: @vending.price, snack: @vending.snack } }
    assert_redirected_to vending_url(@vending)
  end

  test "should destroy vending" do
    assert_difference('Vending.count', -1) do
      delete vending_url(@vending)
    end

    assert_redirected_to vendings_url
  end
end
