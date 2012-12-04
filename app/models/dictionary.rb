class Dictionary < ActiveRecord::Base
  attr_accessible :description, :voice_id, :word
  validates :word, :presence => true
  validates :voice_id, :presence => true
  belongs_to :user
end
