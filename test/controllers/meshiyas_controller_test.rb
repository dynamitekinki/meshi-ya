require 'test_helper'

class MeshiyasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get pick" do
    get :pick
    assert_response :success
  end

end
