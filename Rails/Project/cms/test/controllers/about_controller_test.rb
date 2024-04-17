require "test_helper"

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get us" do
    get about_us_url
    assert_response :success
  end

  test "should get faculty" do
    get about_faculty_url
    assert_response :success
  end

  test "should get members" do
    get about_members_url
    assert_response :success
  end
end
