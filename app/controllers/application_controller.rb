class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @unique_word= Dictionary.find_by_sql("SELECT * FROM dictionaries GROUP BY word")
  	@unique_word_count = @unique_word.length
  	@voice_count = Dictionary.all.length
  	@country_count = User.find_by_sql("SELECT * FROM users GROUP BY country").length
  	@latest_feed = Dictionary.find(:all, :limit => 10)
  	puts "DEBUG Xxxxxxxxxxxxxxxxxxx  #{@latest_feed}  Xxxxxxxxxxxxxxxxxxx"
  	render :layout => false
  end

end
