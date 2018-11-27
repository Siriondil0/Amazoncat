class UserMailer < ApplicationMailer

	  def welcome_email(user)
	  	@user = user
      mail( to: @user.email, subject: "This is a nice welcome email")
   end
end

