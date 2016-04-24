json.array!(@tour_times) do |tour_time|
  json.extract! tour_time, :id, :tour_id, :duration, :departure_date
  json.url tour_time_url(tour_time, format: :json)
end
