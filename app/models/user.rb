class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :microposts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_microposts, through: :likes, source: :micropost
  has_many :my_likes, through: :likes, source: :micropost

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, length: { maximum: 32 }
  validates :email, length: { maximum: 255 }

  mount_uploader :image, ImageUploader
  mount_base64_uploader :image, ImageUploader

  def like(micropost)
    my_likes << micropost
  end

  def unlike(micropost)
    likes.find_by(micropost_id: micropost.id).destroy
  end

  def like?(micropost)
    my_likes.include?(micropost)
  end

end
