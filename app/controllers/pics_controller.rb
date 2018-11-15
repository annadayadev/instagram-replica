class PicsController < ApplicationController
	before_action :find_pic, only: [:show, :edit, :update, :destroy]

	def index
		@pics = Pic.all.order("created_at DESC")
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

	def edit
	end

#update is to edit but create is to new-- responsible for the view files. create and update do not have view files. They are only responsible for changes that are made in the database. 
	def update
		if @pic.update(pic_params)
			redirect_to @pic, notice: "Congrats! Pic was updated!"
		else
			render 'edit'
	end
end

def destroy
	@pic.destroy
	redirect_to root_path
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
