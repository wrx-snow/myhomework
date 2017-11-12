require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get delaccountcheck" do
    get home_delaccountcheck_url
    assert_response :success
  end

end
