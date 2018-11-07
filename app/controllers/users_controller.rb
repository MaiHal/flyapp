class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(users_params)
		if @user.save
			session[:user_id] = @user.id
			flash[:notice] = "会員登録完了"
			redirect_to("/user/#{session[:user_id]}")
		else
			render("users/new")
		end
	end

	def detail
		@user = User.find_by(id: params[:id])
	end

	def users_params
		params.require(:user).permit(:name, :email, :password)
	end
end
