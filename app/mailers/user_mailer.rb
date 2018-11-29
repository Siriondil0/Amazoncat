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
      @emails = User.where(role: "admin")
      @emails.each do | email |
        mail(to: email, subject: "Nouvelle commande passée")
      end
	 end

end
