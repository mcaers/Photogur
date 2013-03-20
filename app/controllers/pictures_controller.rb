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

	# def load_pictures
		
		# @pictures = [
	 #      {
	 #        :title  => "The old church on the coast of White sea",
	 #        :artist => "Sergey Ershov",
	 #        :url    => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
	 #      },
	 #      {
	 #        :title  => "Sea Power",
	 #        :artist => "Stephen Scullion",
	 #        :url    => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
	 #      },
	 #      {
	 #        :title  => "Into the Poppies",
	 #        :artist => "John Wilhelm",
	 #        :url    => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
	 #      }
	 #    ]
	# end

end
