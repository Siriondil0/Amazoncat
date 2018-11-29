class UserMailer < ApplicationMailer

	 def welcome_email(user)
	  	@user = user
      mail( to: @user.email, subject: "Inscription Télé à Chat")
   end

   def client_order(user, order)
      @user = user
      @order = order
      @items = order.items
      mail(to: @user.email , subject: 'Résumé de votre commande')
    end


   def admin_order(order)
      @order = order
      mail(to: "thp.grenobleg@gmail.com", subject: "Nouvelle commande passée")
	 end

end
