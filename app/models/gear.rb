class Gear < ApplicationRecord
  belongs_to :user
  validates :name, :price, :category, :size, presence: true, uniqueness: true, inclusion: { in: ['skiing', 'camping', 'hiking', 'climbing'] }
  has_many :request, dependent: :destroy
end
