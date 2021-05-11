class Product < ApplicationRecord
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