class CartController < ApplicationController

  
  respond_to? :html, :js
 
  def index
    if user_signed_in?
      @cart=Cart.where(:user_id => current_user.id)[0]
      @content=@cart.items
      @price = 0
      @content.each_with_index do |content, index| 
        @price += content.price * @cart.quantities[index].to_i
      end
      @price
    else
    end
  end

  def post
    if user_signed_in?
      @cart=Cart.where(:user_id => current_user.id)[0]
      unless @cart.item_ids.include?(params[:id_add].to_i)
        puts 'newitem'
        @new_cart = @cart.item_ids << params[:id_add].to_i
        Cart.where(:user_id => current_user.id)[0].item_ids = @new_cart
        @cart.quantities << 1
        @cart.save
        redirect_to "/product"
        flash[:success] = "You successfully added the product to your cart"
      else
        puts 'item exist'
        quant = @cart.quantities[@cart.item_ids.index(params[:id_add].to_i)].to_i
        quant += 1
        puts quant
        @cart.quantities[@cart.item_ids.index(params[:id_add].to_i)] = quant.to_s
        @cart.save
        redirect_to "/product" 
        flash[:alert] = "You successfully added the product to your cart"
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
    @ind = @cart.item_ids.index(params[:id_delete].to_i)
    @array.delete(params[:id_delete].to_i)
    @cart.quantities.delete_at(@ind)
    @cart.save
    @cart.item_ids = @array
    @content=@cart.items
    @price = 0
    @content.each_with_index do |content, index| 
      @price += content.price * @cart.quantities[index].to_i
    end
    @price
  end
  
end
