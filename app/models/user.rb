class User < ApplicationRecord
  validates :first_name, :last_name, :email_address, :phone_number, :address, presence: true, uniqueness: true
end
