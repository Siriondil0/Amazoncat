class UserMailer < ApplicationMailer

	 def welcome_email(user)
	  	@user = user
      mail( to: @user.email, subject: "Inscription Télé à Chat")
   end

   def client_order(user)
      @user = user
      mail( to: @user.email, subject: "Inscription Télé à Chat")
   end

   def admin_order(amount)
    	@amount = amount
     	mail( to: "thp.grenobleg@gmail.com", subject: "Nouvelle commande passée")
	 end

end




