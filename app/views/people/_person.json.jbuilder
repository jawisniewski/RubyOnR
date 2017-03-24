json.extract! person, :id, :login, :firstname, :lastname, :created_at, :updated_at
json.url person_url(person, format: :json)
