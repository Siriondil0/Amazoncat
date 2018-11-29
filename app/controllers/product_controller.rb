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
  def new
    @items= Item.new
  end

  def create
    @item = Item.create(item_params)
    @item.image.attach(params[:image])
    redirect_to root_path
  end

  private

  def item_params
    #params.require(:item).permit(:title, :description, :price, :image_url)
    params.permit(:title, :description, :price)
  end
end