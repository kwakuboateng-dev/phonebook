class Contact < ApplicationRecord
  validates :first_name, presence: true, length: {minimum: 3, maximum: 20 }
  
  validates :phone_number, presence: true, length: {minimum: 10}
end
