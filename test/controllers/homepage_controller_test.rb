require "test_helper"

class HomepageControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get homepage_Index_url
    assert_response :success
  end
end
