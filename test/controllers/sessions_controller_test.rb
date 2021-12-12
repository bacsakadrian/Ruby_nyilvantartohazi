require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "login" do
    user = users(:one)
    post login_path, params: {
      username: user.username,
      password: user.password
    }
    assert_equal session[:user], user.id
    assert_response :redirect
    follow_redirect!
  end
  
  test "logout" do
    user = users(:one)
    post login_path, params: {
      username: user.username,
      password: user.password
    }
    get logout_path
    assert_response :success
    assert_nil session[:user]
  end
end
