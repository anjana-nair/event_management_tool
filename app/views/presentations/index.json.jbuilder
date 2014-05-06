json.array!(@presentations) do |presentation|
  json.extract! presentation, :id, :topic, :date_of_presentation, :description, :presenters, :companies, :address, :contact, :event_id
  json.url presentation_url(presentation, format: :json)
end
