class OrderSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :quantity, :tax, :user
end
