class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(users_params)
		if @user.save
			redirect_to("/")
		else
			reder("signup")
		end
	end
	
	def users_params
		params.require(:user).permit(:name, :email, :password)
	end
end
