class PicturesController < ApplicationController
	# before_filter :load_pictures #loads pictures from array before looking at any other code on the page

	def index
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find params[:id]
	end

	
	def new
	end

	def create
		@picture = Picture.new
		@picture.url = params[:url]
		@picture.title = params[:title]
		@picture.artist = params[:artist]
		success = @picture.save
		if success
			redirect_to pictures_path
		end
	end

	def edit
		@picture = Picture.find params[:id]
	end

	def update
		@picture = Picture.find (params[:id])
		success = @picture.update_attributes(
			:title => params[:title], 
			:artist => params[:artist], 
			:url => params[:url]
			)
		if success
			redirect_to "/pictures/#{@picture.id}"	
		else
			redirect_to'/pictures'
		end
	end

	

	# Solution 2
	# @picture.url = params[:url]
	# @picture.title = params[:title]
	# @picture.artist = params[:artist]
	# if @picture.save
		# redirect_to "/pictures/#{@picture.id}"

	

end
