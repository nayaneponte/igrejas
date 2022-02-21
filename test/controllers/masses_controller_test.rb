require "test_helper"

class MassesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get masses_index_url
    assert_response :success
  end
end
