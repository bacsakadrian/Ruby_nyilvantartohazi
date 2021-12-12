require "test_helper"

class NavigateThroughWebTest < ActionDispatch::IntegrationTest
  test "Navigáció az oldalon, bejelentkezés, employee létrehozása, kijelentkezés" do
    user = users(:one)
    get "/"
    assert_response :success
    post login_path, params: {
      username: user.username,
      password: user.password
    }
    assert_response :redirect
    get statistics_path
    assert_response :success
    get new_employee_path
    assert_response :success
    e = Employee.new(age: 32, lastname: 'valami', firstname: 'valaki', isboss: false, days: 320, daysoff: 10, company_id: 1)
    post employees_path, params: {
      employee: e.attributes
    }
    assert_response :success

    get logout_path
    assert_response :success
    assert_select('a', 'Bejelentkezés')
  end
end
