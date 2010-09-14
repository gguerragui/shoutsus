require 'test_helper'

class ShoutControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
