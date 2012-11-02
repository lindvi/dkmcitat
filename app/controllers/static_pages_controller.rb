class StaticPagesController < ApplicationController

	def home
		@quotes = Uquote.all
		@quote = Uquote.new
	end

end
