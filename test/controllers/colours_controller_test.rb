require 'test_helper'

class ColoursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get colours_index_url
    assert_response :success
  end

end
