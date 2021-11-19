class Category < ApplicationRecord
    has_many :products, dependent: :destroy
    belongs_to :category
    has_many :categories, dependent: :destroy
end
