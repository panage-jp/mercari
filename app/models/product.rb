class Product < ApplicationRecord
  has_many :product_categories
  has_many :product_brands
  has_many :categories, through: :product_categories
  has_many :brands, through: :product_brands
  belongs_to :user
end
