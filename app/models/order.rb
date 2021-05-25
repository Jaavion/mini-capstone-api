class Order < ApplicationRecord
  belongs_to :user
end

#first we need to create a users table with attributes
# second we need to test to see if we can create those usersd
#third we need to make sure  user can log in 
#we need to create a products table and add attributes
# we need to see check to see if we can create products
# we need to create an orders table and add attributes
#we need to make sure create orders
# we need to create associations between the 3 tables users, products, orders
# a user can have many products and user belongs to product
# a user can have many orders and order belongs to user
# a product can have many orders and order belongs to product
# orders