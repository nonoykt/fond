class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :microposts, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :username, presence: true, length: { maximum: 32 }
  validates :email, length: { maximum: 255 }

  mount_uploader :image, ImageUploader
  mount_base64_uploader :image, ImageUploader

end
