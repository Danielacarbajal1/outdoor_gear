class Gear < ApplicationRecord
  belongs_to :user
  validates :category, presence: true, inclusion: { in: ['skiing', 'camping', 'hiking', 'climbing'] }
  validates :name, :price, presence: true
  validates :size, inclusion: { in: ['S', 'M', 'L', 'XL'] }
  has_many :requests, dependent: :destroy
end
