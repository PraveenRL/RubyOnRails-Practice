require 'test_helper'

class WithRouterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get with_router_index_url
    assert_response :success
  end

end
