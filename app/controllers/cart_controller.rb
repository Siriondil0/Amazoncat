class CartController < ApplicationController

  
  respond_to? :html, :js
 
  def index
    if user_signed_in?
      @cart=Cart.where(:user_id => params[:id])[0]
      @content=@cart.items
    else

    end
  end

  def post
    if user_signed_in?
      @cart=Cart.where(:user_id => current_user.id)[0]
      unless @cart.item_ids.include?(params[:id_add])
        @new_cart = @cart.item_ids << params[:id_add].to_i
        Cart.where(:user_id => current_user.id)[0].item_ids = @new_cart
        redirect_to "/product"
        flash[:success] = "You successfully added the product to your cart"
      else
        redirect_to "/product" 
        flash[:alert] = "Your cart already have this product"
      end
    else
      redirect_to "/product" 
      flash[:alert] = "You must be connected to have a cart"
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
