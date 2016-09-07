Module CurrentCart
 extend ActiveSupport::Concern

 private

 def set_cart 
   @cart.find(session[:cart_id])
 rescue ActiveRecord::RecordNotFound
 @card = Card.create
 session[:cart_id] = @cart.id
   
 end

end