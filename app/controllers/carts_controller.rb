class CartsController < ApplicationController

  def show
  end


  def checkout
    id = current_cart.id
    current_user.clear_current_cart
    redirect_to cart_path(id)
  end

end
