# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def welcome_email
      @user = User.last
      UserMailer.welcome_email(@user)
  end

   def client_order
      @cart= Cart.last
      UserMailer.client_order(@cart)
   end

    def admin_order
      @user = User.last
      UserMailer.admin_order(@user)
   end
end


