class ChargesController < ApplicationController
  def new
    if user_signed_in?
      get_price
    else
    end
  end
  
  def create
    # Price in cents to convert
    get_price
    puts @price.class
  
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
  
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @convert_price,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private
  def get_price
    @cart = Cart.where(:user_id => current_user.id)[0]
    @content = @cart.items
    @price = 0
    @content.each_with_index do |content, index| 
      @price += content.price * @cart.quantities[index].to_i
    end
    @price
    @convert_price = @price.to_i*100
    @convert_price2 = @price*100
  end

end