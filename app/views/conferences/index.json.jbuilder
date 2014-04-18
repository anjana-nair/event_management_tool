json.array!(@conferences) do |conference|
  json.extract! conference, :id, :topic, :author, :date
  json.url conference_url(conference, format: :json)
end
