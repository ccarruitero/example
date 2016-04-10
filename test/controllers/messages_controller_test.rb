require 'test_helper'

class MessagesControllerTest < ActionController::TestCase

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message" do
    assert_difference('Message.count') do
      post :create, message: { number: 124124, text: 'gasgagwgq' }
    end

    assert_redirected_to root_path
  end

end
