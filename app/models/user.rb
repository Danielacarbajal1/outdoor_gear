class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :first_name, :last_name, :email_address, :phone_number, :address, presence: true, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :gears
end
