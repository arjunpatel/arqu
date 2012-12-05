class SearchController < ApplicationController

  layout "inner_pages.html.erb"

	def index
		@search = Dictionary.search(params[:search])
	end

	def result
		@search = Dictionary.search(params[:search])
  		@result = @search.all 
  		flash[:notice] = "Unable to find any result that match your search criteria" if @result.length <= 0
  		puts "DEBUG HERE --------------------- #{@result} ------------------------"
	end

end
