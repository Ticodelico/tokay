json.extract! restaurant, :id, :name, :reception_number, :contact_number, :email, :facebook_site, :web_site, :active, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
