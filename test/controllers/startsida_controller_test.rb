require 'test_helper'

class StartsidaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success #compares the HTTP response code 
  end

end
