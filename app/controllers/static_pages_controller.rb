class StaticPagesController < ApplicationController

	def home
		@quotes = Uquote.order("created_at DESC")
		@quote = Uquote.new
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
