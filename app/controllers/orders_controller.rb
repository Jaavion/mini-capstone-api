class OrdersController < ApplicationController
  before_action :authenticate_user
  def create
    order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total:  params[:total]
    )
    if order.save
      render json: {message: "Your order have been created"}
    else 
      render json: {messages: "you have not been created"}
    end
  end

  def show
    order = Order.find(params[:id])
    render json: order.to_json 
  end

  def index
    order = Order.all
    render json: order.to_json
  end
end
