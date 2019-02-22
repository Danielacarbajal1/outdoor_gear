class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :set_default_avatar
  mount_uploader :photo, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :gears

  def set_default_avatar
    @picture = self.photo
    if @picture.blank?
      @picture_user = "http://chittagongit.com//images/coder-icon/coder-icon-4.jpg"
    else
      @picture_user = @picture.url
    end
    return @picture_user
  end
end
