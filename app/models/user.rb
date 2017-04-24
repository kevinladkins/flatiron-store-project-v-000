class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :carts
  belongs_to :current_cart, class_name: 'Cart'
 

  def clear_current_cart
    current_cart.line_items.each do |li|
      item = Item.find(li.item_id)
      item.inventory = item.inventory - li.quantity
      item.save
      li.destroy
    end
    self.update(current_cart: nil)
  end


end
