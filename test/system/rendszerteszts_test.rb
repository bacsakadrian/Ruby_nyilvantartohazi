require "application_system_test_case"

class RendszertesztsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit '/sessions/create'
    assert_selector 'legend', text: 'Bejelentkezés'

    fill_in "username", with: "teszt"
    fill_in "password", with: "12345"

    click_on 'Bejelentkezés'
  end
end
