class ProductController < ApplicationController
	before_action :set_item, only: [:show, :edit, :update, :destroy]
  def index 
    @items = Item.order(1)
    puts @items
  end
def show
  	  @item= Item.find(params[:id])
  end
​
  
end