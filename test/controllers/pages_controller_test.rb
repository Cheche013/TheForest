require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get the_forest" do
    get pages_the_forest_url
    assert_response :success
  end
end
