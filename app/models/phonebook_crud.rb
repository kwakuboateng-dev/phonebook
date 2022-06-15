class PhonebookCrud < ApplicationRecord
  validates :first_name, presence: true, length: {minimum: 3, maximum: 20}
  validates :last_name, length: {minimum: 3, maximum: 20}
  validates :phone_number, presence: true, length: {minimum: 10, maximum: 10}
  validates :address, length: {minimum: 20, maximum: 30}
  
end
