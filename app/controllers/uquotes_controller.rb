class UquotesController < ApplicationController

	def edit
		@quote = Uquote.find(params[:id])
	end

	def update
		@quote = Uquote.find(params[:id])
		if @quote.update_attributes(params[:uquote])
			flash[:success] = "Uppdaterade citatet"
		else
			flash[:failure] = "Nagot gick fel, prata med Charlie"
		end
		redirect_to root_path
	end

	def create
		@quote = Uquote.new(params[:uquote])
		if @quote.save
			flash[:success] = "Nytt citat tillagt"
		else
			flash[:failure] = "FEL"
		end
		respond_to do |format|
			format.html { redirect_to root_path }
			format.js
		end
	end


	def destroy
		@quote = Uquote.find(params[:id])
		@quote.destroy
		redirect_to root_path
	end

end
