class ChargesController < ApplicationController
  #def initialize(user_id, card)
  #  @user = User.find(user_id)
  #  @card = card
  #end
  
  def new
  end
  
  def create
    # Amount in cents
    @amount = 9900
  
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
