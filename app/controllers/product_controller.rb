class ProductController < ApplicationController
  def index 
    @items = Item.order(1)
    @cart=Cart.where(:user_id => current_user.id)[0]
  end

  def show
    @item= Item.find(params[:id])
    @cart=Cart.where(:user_id => current_user.id)[0]
  end

end