class Product < ApplicationRecord
  belongs_to :category
  has_many :orders_products
  has_many :carts

  mount_uploader :image, ImageUploader
end
