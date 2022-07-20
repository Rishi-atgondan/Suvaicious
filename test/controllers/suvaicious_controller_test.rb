require "test_helper"

class SuvaiciousControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get suvaicious_index_url
    assert_response :success
  end
end
