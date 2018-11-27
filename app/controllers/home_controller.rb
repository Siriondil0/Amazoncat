class HomeController < ApplicationController
  def index
  	puts 'test'
  	puts current_user.id
  	puts 'test'
  	UserMailer.welcome_email(current_user).deliver_now!
  end
end
