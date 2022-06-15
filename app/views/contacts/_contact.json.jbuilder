json.extract! contact, :id, :first_name, :last_name, :phone_number, :address, :created_at, :updated_at
json.url contact_url(contact, format: :json)
