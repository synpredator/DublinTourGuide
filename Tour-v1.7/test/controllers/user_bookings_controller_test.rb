require 'test_helper'

class UserBookingsControllerTest < ActionController::TestCase
  setup do
    @user_booking = user_bookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_bookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_booking" do
    assert_difference('UserBooking.count') do
      post :create, user_booking: { booking_id: @user_booking.booking_id, user_id: @user_booking.user_id }
    end

    assert_redirected_to user_booking_path(assigns(:user_booking))
  end

  test "should show user_booking" do
    get :show, id: @user_booking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_booking
    assert_response :success
  end

  test "should update user_booking" do
    patch :update, id: @user_booking, user_booking: { booking_id: @user_booking.booking_id, user_id: @user_booking.user_id }
    assert_redirected_to user_booking_path(assigns(:user_booking))
  end

  test "should destroy user_booking" do
    assert_difference('UserBooking.count', -1) do
      delete :destroy, id: @user_booking
    end

    assert_redirected_to user_bookings_path
  end
end
