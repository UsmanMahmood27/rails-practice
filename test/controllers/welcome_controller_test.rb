require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get welcome_home_url
    assert_response :success
  end

  test "should get dash_board" do
    get welcome_dash_board_url
    assert_response :success
  end

end
