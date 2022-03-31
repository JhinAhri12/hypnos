json.extract! hotel, :id, :name, :city, :description, :adress, :user_id, :created_at, :updated_at
json.url user_url(hotel, format: :json)