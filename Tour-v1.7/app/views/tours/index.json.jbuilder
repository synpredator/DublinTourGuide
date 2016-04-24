json.array!(@tours) do |tour|
  json.extract! tour, :id, :title, :description, :cost, :location
  json.url tour_url(tour, format: :json)
end
