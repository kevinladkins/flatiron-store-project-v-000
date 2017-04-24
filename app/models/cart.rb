class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items
  
  enum status: {unsubmitted: 0, submitted: 1}

  def total
    total = 0
    line_items.each {|li| total += (li.item.price *  li.quantity)}
    total
  end

  def add_item(item_id)
    if line_items.find_by(item_id: item_id)
      line_item = line_items.find_by(item_id: item_id)
      line_item.quantity += 1
      line_item
    else
      line_item = line_items.build(item_id: item_id)
    end
  end
  
  def display_total
    total.to_f/100
  end
  
  
  
end


