require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get sessions_name:string_url
    assert_response :success
  end

  test "should get password:string" do
    get sessions_password:string_url
    assert_response :success
  end
end
