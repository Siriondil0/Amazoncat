class HomeController < ApplicationController
<<<<<<< HEAD
  def index
  	puts 'test'
  	#puts current_user.id
  	puts 'test'
  	UserMailer.welcome_email(current_user).deliver_now!
  end
=======
	def index
		if user_signed_in?
  	#UserMailer.welcome_email(current_user).deliver_now!
		end
	end
>>>>>>> 4b58c3abc2b891651efd954b74c76508b822491e
end


