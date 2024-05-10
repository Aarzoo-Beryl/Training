require "test_helper"

class SellerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seller_index_url
    assert_response :success
  end

  test "should get show" do
    get seller_show_url
    assert_response :success
  end

  test "should get new" do
    get seller_new_url
    assert_response :success
  end

  test "should get edit" do
    get seller_edit_url
    assert_response :success
  end

  test "should get delete" do
    get seller_delete_url
    assert_response :success
  end
end
