class Gear < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :category, presence: true, inclusion: { in: ['skiing', 'camping', 'hiking', 'climbing'] }
  validates :name, :price, :description, presence: true
  has_many :requests, dependent: :destroy
end
