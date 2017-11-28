require 'test_helper'

class CommercesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get commerces_index_url
    assert_response :success
  end

end
