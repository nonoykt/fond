class Micropost < ApplicationRecord
  has_one_attached :image
  validates :content, presence: true, length: { maximum: 140 }
end
