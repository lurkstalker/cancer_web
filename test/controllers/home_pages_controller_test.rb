require 'test_helper'

class HomePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get home_pages_help_url
    assert_response :success
  end

end
