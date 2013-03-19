class PicturesController < ApplicationController

def index
	@greeting = "Hello World"

	@pictures = [
		'http://monicao.s3.amazonaws.com/bitmaker/house.jpg',
     	'http://monicao.s3.amazonaws.com/bitmaker/wave.jpg',
     	'http://monicao.s3.amazonaws.com/bitmaker/girl.jpg'
	]


	@title = "This is my title"
end

end
