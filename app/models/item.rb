class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :line_items

  def self.available_items
    all.where("inventory > ?", 0)
  end
  
  def display_price
    self.price.to_f/100
  end

end
