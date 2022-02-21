require "test_helper"

class ChurchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get churches_index_url
    assert_response :success
  end
end
