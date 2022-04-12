json.extract! event, :id, :event_title, :event_description, :event_date, :event_location, :created_at, :updated_at
json.url event_url(event, format: :json)
