require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get demotest" do
    get test_demotest_url
    assert_response :success
  end

end
