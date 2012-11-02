class UquotesController < ApplicationController



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
