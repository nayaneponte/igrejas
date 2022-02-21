require "test_helper"

class ConfessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get indes" do
    get confessions_indes_url
    assert_response :success
  end
end
