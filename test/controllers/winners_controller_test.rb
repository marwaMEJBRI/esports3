require "test_helper"

class WinnersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get winners_index_url
    assert_response :success
  end

  test "should get new" do
    get winners_new_url
    assert_response :success
  end
end
