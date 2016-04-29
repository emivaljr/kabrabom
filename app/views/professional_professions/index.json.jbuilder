json.array!(@professional_professions) do |professional_profession|
  json.extract! professional_profession, :id, :professional_id, :profession_id
  json.url professional_profession_url(professional_profession, format: :json)
end
