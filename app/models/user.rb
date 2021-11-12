class User < ApplicationRecord
  has_many :orders
  has_many :carts
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :confirmable,
         :recoverable

  mount_uploader :image, ImageUploader
end
