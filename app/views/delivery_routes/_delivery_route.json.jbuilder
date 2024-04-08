json.extract! delivery_route, :id, :name, :distance, :description
json.trips delivery_route.trips do |trip|
  json.partial! "trips/trip", trip: trip
end
json.url delivery_route_url(delivery_route, format: :json)
