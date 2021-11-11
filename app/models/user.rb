class User < ApplicationRecord
  has_many :orders
  has_many :carts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  mount_uploader :image, ImageUploader
end
