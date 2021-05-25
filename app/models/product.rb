class Product < ApplicationRecord
  validates  :price, numericality: {:greater_than_or_equal_to => 0}
  validates :description, length: {in: 0.. 500}
  # validates :quantity, numericality: {:greater_than_or_equal_to => 0}
  has_many :orders
  has_many :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products
end