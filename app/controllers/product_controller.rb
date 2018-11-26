class ProductController < ApplicationController
  def index 
    @items = Item.order(1)
    puts @items
  end
end