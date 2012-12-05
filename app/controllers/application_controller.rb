class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
  	@unique_word_count = Dictionary.count(:group => "word").count
  	@voice_count = Dictionary.all.length
  	@country_count = User.count(:group => "country").count
    @latest_feed = Dictionary.find(:all, :limit => 10)
  	puts "DEBUG Xxxxxxxxxxxxxxxxxxx  #{@latest_feed}  Xxxxxxxxxxxxxxxxxxx"
  	render :layout => false
  end

end
