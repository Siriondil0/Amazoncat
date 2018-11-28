class UserMailer < ApplicationMailer

	  def welcome_email(user)
	  	@user = user
      mail( to: @user.email, subject: "Inscription Télé à Chat")
   end

   def client_order(user)

    	@user = user
    	mail(to: @user.email, subject: "Résumé de votre commande sur Télé à Chat")
   end

   def admin_order(price)
    	@price = price
     	mail( to: "thp.grenobleg@gmail.com", subject: "Nouvelle commande passée")
	end

end
