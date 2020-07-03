class Micropost < ApplicationRecord
  has_one_attached :image
  has_many :likes, dependent: :destroy
  has_many :likes_user, through: :likes, source: :user

  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  mount_uploader :image, ImageUploader
  mount_base64_uploader :image, ImageUploader

end