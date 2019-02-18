class Request < ApplicationRecord
  belongs_to :user
  belongs_to :gear
  validates :start, :end, presence: true
end
