require "test_helper"

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get product_list" do
    get product_product_list_url
    assert_response :success
  end
end
