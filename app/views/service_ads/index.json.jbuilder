json.array!(@service_ads) do |service_ad|
  json.extract! service_ad, :id, :title, :description, :active, :price, :service_id, :user_id
  json.url service_ad_url(service_ad, format: :json)
end
