class ProductController < ApplicationController
  def index 
    @items = Item.order(1)
    puts @items
  end
  def show
  	  @item= Item.find(params[:id])
  end

end