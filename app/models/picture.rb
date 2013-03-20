class Picture < ActiveRecord::Base
	# allow mass-assignment for the attributes title and artist

	attr_accessible :title, :artist, :url	
end