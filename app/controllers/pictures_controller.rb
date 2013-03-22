class PicturesController < ApplicationController
	# before_filter :load_pictures #loads pictures from array before looking at any other code on the page

	def index
		if params[:free] == "yes"
			@pictures = Picture.where(:copyrighted => false).all
		else
			@pictures = Picture.all
		end
	end

	def show
		@picture = Picture.find params[:id]
	end

	def new
		@picture = Picture.new
	end

	def destroy
	 	@picture = Picture.find params[:id]
	 	@picture.destroy
	 	redirect_to pictures_path
	end 

	def create
		# @picture = Picture.new
		# @picture.url = params[:url]
		# @picture.title = params[:title]
		# @picture.artist = params[:artist]
		# success = @picture.save

		@picture = Picture.new(params[:picture])
		if @picture.save
			redirect_to pictures_path
		else
			flash.now[:error] = "Could not save the picture. Please try again."
			render :new
		end
	end

	def edit
		@picture = Picture.find params[:id]
	end

	def update
		@picture = Picture.find(params[:id])
		
			# :title => params[:title], 
			# :artist => params[:artist], 
			# :url => params[:url]
			# )
		if @picture.update_attributes(params[:picture])
			# redirect_to "/pictures/#{@picture.id}"
			#redirect_to picture_path(@picture.id)	
			#named routes are convenience methods created by
			#ruby to help us naviage the application
			#redirect_to picture_path(@picture)
			redirect_to @picture 
		else
			redirect_to pictures_path
		end
	end

	

	# Solution 2
	# @picture.url = params[:url]
	# @picture.title = params[:title]
	# @picture.artist = params[:artist]
	# if @picture.save
		# redirect_to "/pictures/#{@picture.id}"

	

end
