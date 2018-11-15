class PicsController < ApplicationController

	def index
	end


	def new
		#we'll be using this in our viewfile 
		@pic = Pic.new
	end

	def create
		@pic = Pic.new(pic_params)
	end

#the reason why we are putting some on private so that it applies to all the other actions instead of repeating ourselves.

	private

	def pic_params
		params.require(:pic).permit(:title, :description)
	end

end
