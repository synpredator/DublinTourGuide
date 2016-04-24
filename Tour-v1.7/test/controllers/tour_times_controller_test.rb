require 'test_helper'

class TourTimesControllerTest < ActionController::TestCase
  setup do
    @tour_time = tour_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tour_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tour_time" do
    assert_difference('TourTime.count') do
      post :create, tour_time: { departure_date: @tour_time.departure_date, duration: @tour_time.duration, tour_id: @tour_time.tour_id }
    end

    assert_redirected_to tour_time_path(assigns(:tour_time))
  end

  test "should show tour_time" do
    get :show, id: @tour_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tour_time
    assert_response :success
  end

  test "should update tour_time" do
    patch :update, id: @tour_time, tour_time: { departure_date: @tour_time.departure_date, duration: @tour_time.duration, tour_id: @tour_time.tour_id }
    assert_redirected_to tour_time_path(assigns(:tour_time))
  end

  test "should destroy tour_time" do
    assert_difference('TourTime.count', -1) do
      delete :destroy, id: @tour_time
    end

    assert_redirected_to tour_times_path
  end
end
