class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD
=======

  #validates :first_name, :last_name, :email_address, :phone_number, :address, presence: true, uniqueness: true

>>>>>>> 701ae6cea35af8e9f0ae77ac1cbb40ac8f6d8ee0
  has_many :gears
end
