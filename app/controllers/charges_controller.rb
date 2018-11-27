class ChargesController < ApplicationController
  def new
    if user_signed_in?
        @cart = Cart.where(:user_id => current_user.id)[0]
        @content = @cart.items
        @price = 0
        @content.each_with_index do |content, index| 
          @price += content.price * @cart.quantities[index].to_i
        end
        @price
        @convert_price = @price*100
    else
    end
  end
  
  def create
    # Price in cents to convert
    @amount = 8000
  
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
  
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end