module LineItemHelper
 
 def line_item_price(item)
   number_to_currency(item.display_price)
 end

end