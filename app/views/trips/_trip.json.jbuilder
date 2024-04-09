# frozen_string_literal: true

json.extract! trip, :id, :scheduled_departure, :status, :responsible
json.trip_tasks trip.trip_tasks do |task|
  json.partial! 'trip_tasks/trip_task', trip_task: task
end
