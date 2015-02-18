require 'test_helper'

class SendControllerTest < ActionController::TestCase
  test "should get get_address" do
    get :get_address
    assert_response :success
  end

  test "should get send_mail" do
    get :send_mail
    assert_response :success
  end

end
