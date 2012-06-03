require 'test_helper'

class TestJqmControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
