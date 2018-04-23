json.extract! message, :id, :body, :post_id, :created_at, :updated_at
json.url message_url(message, format: :json)
