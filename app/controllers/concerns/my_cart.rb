module MyCart
    
    private
## Method with both if and else option and rescue option
# http://localhost:3000/line_items?product_id=2
    def setmycart
        #if session[:cart_id]
        
        # @cart (instance varible) = Cart.find(session[:cart_id]) ## Object Modelname.method
        @cart = Cart.find(session[:cart_id])
                
        # else 
        rescue ActiveRecord::RecordNotFound
            @cart = Cart.create
            session[:cart_id] = @cart.id
        #end
    end
end