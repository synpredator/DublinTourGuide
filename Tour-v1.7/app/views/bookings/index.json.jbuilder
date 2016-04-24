json.array!(@bookings) do |booking|
  json.extract! booking, :id, :tour_id
  json.url booking_url(booking, format: :json)
end
