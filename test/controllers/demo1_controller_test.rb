require 'test_helper'

class Demo1ControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get demo1_new_url
    assert_response :success
  end

end
