class SearchController < ApplicationController

	def index
		@search = User.search(params[:search])
	end

	def result
		@search = User.search(params[:search])
  		@articles = @search.all 
  		puts "DEBUG HERE --------------------- #{@articles} ------------------------"
	end

end
