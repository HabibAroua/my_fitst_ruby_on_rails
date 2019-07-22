require 'test_helper'

class HabibControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get habib_index_url
    assert_response :success
  end

end
