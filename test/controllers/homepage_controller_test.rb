require "test_helper"

class HomepageControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get "/"
    assert_response :success
  end

  test "should get statistics" do
    get statistics_url
    assert_response :success
  end

  test "kijelentkezés" do
    get logout_path
    assert_response :success
    assert_select("h2", "Sikeres kijelentkezés")
  end
end
