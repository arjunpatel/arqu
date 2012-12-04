class DictionariesController < InheritedResources::Base

	#Bypass token authenticity
	skip_filter :verify_authenticity_token
	#before_filter :authenticate_admin!, :only => ["edit", "index"]

	def create
		user_id = params[:user_id].to_i
		word = params[:word]

		begin
			voice_id = /http:\/\/vocaroo.com\/i\/(\w+)/.match(params[:voice_id])[1]
		rescue
			flash[:notice] = "Invalid Voice File Input"
			render :new
			return false
		end

		description = params[:description] || ""

		##Fetch current loggedin user
		if user_id > 0
			user = User.find(user_id)
			dict = Dictionary.create!(:word => word, :voice_id => voice_id, :description => description)
			user.dictionaries << dict
			user.save!
			flash[:notice] = "Your voice file has been added to our database"
		else
			flash[:notice] = "Please register/login first!"
		end

		render :new
	end


end
