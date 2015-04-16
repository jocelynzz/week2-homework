require 'test_helper'

class ContactControllerTest < ActionController::TestCase
  test "should get submitted" do
    get :submitted
    assert_response :success
  end

end
