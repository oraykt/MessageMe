require 'test_helper'

class MessagessControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get messagess_create_url
    assert_response :success
  end

end
