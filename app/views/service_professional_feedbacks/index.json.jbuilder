json.array!(@service_professional_feedbacks) do |service_professional_feedback|
  json.extract! service_professional_feedback, :id, :professional_service_id, :quantity_stars, :user_id, :feedback
  json.url service_professional_feedback_url(service_professional_feedback, format: :json)
end
