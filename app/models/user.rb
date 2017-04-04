class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :carts
  attr_accessor :current_cart

  def current_cart=(cart)
    self.update(current_cart_id: cart.id)
  end

  def current_cart
    if current_cart_id
    Cart.find(current_cart_id)
   end
  end




end
