class CheckoutController < ApplicationController
  def show
    @cart = Cart.find(params[:cart_id])
  end

  def complete_purchase    
    redirect_to root_path, alert: "Purchase complete!"
  end
end
