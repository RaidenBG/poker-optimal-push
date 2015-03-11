require 'test_helper'

class Test2ControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get demotest" do
    get :demotest
    assert_response :success
  end

end
