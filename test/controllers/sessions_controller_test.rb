require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    # get sessions_new_url
    # get new_session_url
    get new_session_path
    assert_response :success
  end
end
