module CartHelper
 
 def total_price(cart)
   number_to_currency(cart.display_total)
 end

end