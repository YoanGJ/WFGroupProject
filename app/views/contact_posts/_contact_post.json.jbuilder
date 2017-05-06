json.extract! contact_post, :id, :name, :phone, :email, :message, :created_at, :updated_at
json.url contact_post_url(contact_post, format: :json)
