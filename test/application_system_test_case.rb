require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome do |driver_options|
    driver_options.add_argument('--disable-dev-shm-usage')
  end
end