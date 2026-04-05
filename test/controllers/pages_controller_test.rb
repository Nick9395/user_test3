require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    # get pages_about_url
    # get about_url
    get about_path
    assert_response :success
  end

  test "should get help" do
    get help_path
    assert_response :success
  end
end
