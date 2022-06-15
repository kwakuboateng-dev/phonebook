json.extract! phonebook_crud, :id, :first_name, :last_name, :phone_number, :address, :created_at, :updated_at
json.url phonebook_crud_url(phonebook_crud, format: :json)
