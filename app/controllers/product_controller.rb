class ProductController < ApplicationController
  def index 
    @items = Item.order(1)
    if user_signed_in?
      @cart=Cart.where(:user_id => current_user.id)[0]
      if @cart
        @cart
      else
        @cart = Cart.create!(user_id: current_user.id)
      end
    end
  end

  def show
    @item= Item.find(params[:id])
    if user_signed_in?
      @cart=Cart.where(:user_id => current_user.id)[0]
    end
  end

  def resume
    if current_user.admin?
      @orders = Order.all
      @users = User.all
      @amount = 0
      @orders.each do |order|
        @amount += order.price.to_i
      end
    else
      redirect_to root_path
    end
  end

  def past_orders
    if user_signed_in?
      @orders=current_user.orders
    else
      redirect_to root_path
    end
  end

  def toggle_past
    @order = Order.find(params[:id])
  end
end