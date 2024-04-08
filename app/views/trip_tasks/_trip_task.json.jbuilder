json.extract! trip_task, :id, :trip_id, :type, :adress, :adressee_name, :completed, :message, :created_at, :updated_at
json.url trip_task_url(trip_task, format: :json)
