module ItemHelper
 
 def price(item)
   number_to_currency(item.display_price)
 end

end