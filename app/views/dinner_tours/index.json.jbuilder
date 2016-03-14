json.array!(@dinner_tours) do |dinner_tour|
  json.extract! dinner_tour, :id, :title, :notes
  json.url dinner_tour_url(dinner_tour, format: :json)
end
