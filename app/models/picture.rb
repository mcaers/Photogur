class Picture < ActiveRecord::Base
	# allow mass-assignment for the attributes title and artist
	attr_accessible :title, :artist, :url, :copyrighted

	validates :title, :presence => true
	validates :url,	{		
		:format => {
			:with => /^https?:/, :message => "Please enter a valid url."
		}
	}
end