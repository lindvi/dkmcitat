class UsersController < ApplicationController

	before_filter :signed_in_user

	def new
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			flash[:success] = "Profile updated"
			if !params[:admin_user]
				sign_in @user
			end
			redirect_to @user
		else
			flash[:failure] = @user.errors.full_messages
			redirect_to @user
		end
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			sign_in @user
			redirect_to root_path
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end


	private

	def signed_in_user
		unless signed_in?
			store_location
			redirect_to signin_path, notice: "Please sign in."
		end
	end

	def correct_user
		@user = User.find(params[:id])
		redirect_to(root_path) unless current_user?(@user)
	end

	def admin_user
		redirect_to(root_path) unless admin_user?
	end

end
