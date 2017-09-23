require 'test_helper'

class NotifierControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get notifier_show_url
    assert_response :success
  end

end
