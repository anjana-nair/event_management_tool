json.array!(@events) do |event|
  json.extract! event, :id, :name, :date_of_event, :description, :presenters, :companies, :address, :contact
  json.url event_url(event, format: :json)
end
