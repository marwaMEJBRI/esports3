require "test_helper"

class HomeControllerTest < ActionDis::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end
end
