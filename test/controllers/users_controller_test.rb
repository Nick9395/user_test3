require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    # get users_new_url
    # get new_user_url
    get new_user_path
    assert_response :success
  end
end
