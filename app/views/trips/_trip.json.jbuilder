json.extract! trip, :id, :delivery_routes_id, :scheduled_departure, :status, :responsible, :created_at, :updated_at
json.url trip_url(trip, format: :json)
