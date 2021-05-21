class Product < ApplicationRecord
  validates  :price, numericality: {:greater_than_or_equal_to => 0}
  validates :description, length: {in: 0.. 500}
  # validates :quantity, numericality: {:greater_than_or_equal_to => 0}
  has_many :suppliers


  def is_discount
    if price < 10
      p true
    else 
      p false
    end
  end
  def tax 
    return price * 0.9
  end
  def total 
    return price.sum.tax  
  end
end