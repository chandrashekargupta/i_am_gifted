require 'test_helper'

class StaticpagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get programs" do
    get :programs
    assert_response :success
  end

  test "should get ngoservices" do
    get :ngoservices
    assert_response :success
  end

  test "should get boardofeducation" do
    get :boardofeducation
    assert_response :success
  end

  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
