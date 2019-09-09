class Brand < ApplicationRecord
  has_many :products, through: :product_brands
  has_many :product_brands
end
