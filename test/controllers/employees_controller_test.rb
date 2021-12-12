require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should get edit" do
    newemployee = employees(:one)
    get edit_employee_path(newemployee.id)
    assert_response :success
  end
end
