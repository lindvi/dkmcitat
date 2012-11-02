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

		redirect_to root_path
	end


	def destroy

	end

end
