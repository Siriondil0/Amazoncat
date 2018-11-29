class UserMailer < ApplicationMailer

	 def welcome_email(user)
	  	@user = user
      mail( to: @user.email, subject: "Inscription Télé à Chat")
   end

   def client_order(user)
      @user = user
      orders = Order.where(user_id: @user)
      @items = []
      orders.each do |ord|
        assoc = AssociateOrderItem.find_by(order_id: ord.id)
        @items.push(Item.find(assoc.item_id))
      end
      mail(to: @user.email , subject: 'Résumé de votre commande')
    end


   def admin_order(amount)
     @amount = amount
     mail(to: "thp.grenobleg@gmail.com", subject: "Nouvelle commande passée")
	 end

end
