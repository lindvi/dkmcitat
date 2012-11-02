class StaticPagesController < ApplicationController

	def home
		@quotes = Uquote.order("created_at DESC")
		@quote = Uquote.new
	end

end
