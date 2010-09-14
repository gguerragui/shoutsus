require 'test_helper'

class ShoutsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
