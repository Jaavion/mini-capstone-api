class ProductsController < ApplicationController
  def index
     product = Product.where("name = ? #{params[:name]}" )
    # product = Product.all
    # render json: product.to ƒ_json
  end
  def show
    product = Product.find(params[:id])
    render json: product.to_json
  end
  def create 
    product = Product.new({
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
      })
      product.save
      render json: product.to_json
  end
  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description]  || product.description
    product.save
  end


  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: 'We have deleted your product'}
  end
  
end
