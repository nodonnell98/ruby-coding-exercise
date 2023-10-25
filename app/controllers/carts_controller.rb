class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :add_to_cart]
  def show
  end

  def add_to_cart
    product = Product.find(params[:product_id])
    @cart_item = @cart.cart_items.find_by(product: product)
  
    if @cart_item
      @cart_item.quantity += 1
    else
      @cart_item = @cart.cart_items.build(product: product, quantity: 1)
    end
  
    if @cart_item.save
      redirect_to cart_path, notice: 'Product added to cart!'
    else
      redirect_to products_path, alert: 'Could not add product to cart.'
    end
  end

  private

  def set_cart
    @cart = Cart.first_or_create
  end
  
end