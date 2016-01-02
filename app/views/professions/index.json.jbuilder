json.array!(@professions) do |profession|
  json.extract! profession, :id, :name, :description, :active
  json.url profession_url(profession, format: :json)
end
