class Picture < ActiveRecord::Base
	# allow mass-assignment for the attributes title and artist
	attr_accessible :title, :artist, :url	

	validates :title, :presence => true
	validates :url,	{		
		:format => {
			:with => /^https?:/, :message => "Please enter a valid url."
		}
	}
end