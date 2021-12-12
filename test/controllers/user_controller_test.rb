require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "can see new user" do
    get user_new_url
    assert_response :success
    assert_select('legend', 'Regisztráció')
    assert_select('a', 'Bejelentkezés')
  end

  test "add new user" do
    u = User.new(username: 'valamiuj', password: 'valami123')
    post user_create_url, params: {
      user: u.attributes
    }
    assert_response :redirect
  end
end
