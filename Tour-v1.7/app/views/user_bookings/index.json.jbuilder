json.array!(@user_bookings) do |user_booking|
  json.extract! user_booking, :id, :booking_id, :user_id
  json.url user_booking_url(user_booking, format: :json)
end
