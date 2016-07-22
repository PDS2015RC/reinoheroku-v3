require 'test_helper'
include Devise::Test::ControllerHelpers

class AdminControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
