json.array!(@user_details) do |user_detail|
  json.extract! user_detail, :id, :FirstName, :LastName, :SelectTour, :TourDescription, :Time
  json.url user_detail_url(user_detail, format: :json)
end
