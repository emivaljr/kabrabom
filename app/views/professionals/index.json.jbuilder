json.array!(@professionals) do |professional|
  json.extract! professional, :id, :user_id, :integer, :nothing_on_record, :integer, :active, :integer, :phone_id, :integer, :address_id, :integer
  json.url professional_url(professional, format: :json)
end
