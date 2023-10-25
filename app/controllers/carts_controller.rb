class CartsController < ApplicationController
  def show
    @cart = current_cart
  end

  private

  def current_cart
    Cart.first_or_create
  end
  
end