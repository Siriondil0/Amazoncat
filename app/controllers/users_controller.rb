class UsersController < ApplicationController
	def user_params
		params.require(:user).permit(:avatar, image: [])
		
	end
end
