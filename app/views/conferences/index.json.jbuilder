json.array!(@conferences) do |conference|
  json.extract! conference, :id, :topic, :date_of_conference, :description, :presenters, :companies, :address, :contact, :event_id
  json.url conference_url(conference, format: :json)
end
