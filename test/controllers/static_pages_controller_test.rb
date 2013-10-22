require "test_helper"

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get bus" do
    get :bus
    assert_response :success
  end

  test "should get itinerary" do
    get :itinerary
    assert_response :success
  end

  test "should get tour" do
    get :tour
    assert_response :success
  end

  test "should get pricing" do
    get :pricing
    assert_response :success
  end

  test "should get stadium" do
    get :stadium
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
