class CartController < ApplicationController

  
  respond_to? :html, :js
 
  def index
    if user_signed_in?
      @cart=Cart.where(:user_id => params[:id])[0]
      @content=@cart.items
    else

    end
  end

  def update
  end

  def destroy
    @cart = Cart.find(params[:id])
    @array = @cart.item_ids
    @array.delete(params[:id_delete].to_i)
    @cart.item_ids = @array
    @content=@cart.items
  end
  
end
