class SessionsController < ApplicationController

	def create
		user = User.find_by_username(params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_back_or root_path
		else
			flash.now[:error] = "Invalid username/password combination"
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end



end
