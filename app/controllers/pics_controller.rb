class PicsController < ApplicationController
	before_action :find_pic, only: [:show, :edit, :update, :destroy]

	def index
	end

	def show
	end



	def new
		#we'll be using this in our viewfile 
		@pic = Pic.new
	end

	def create
		@pic = Pic.new(pic_params)

		if @pic.save
			redirect_to @pic, notice: "Yess! It was posted!"
		else
			render 'new'
		end
	end

#the reason why we are putting some on private so that it applies to all the other actions instead of repeating ourselves.

	private

	def pic_params
		params.require(:pic).permit(:title, :description)
	end

	def find_pic
		@pic = Pic.find(params[:id])
	end

end
