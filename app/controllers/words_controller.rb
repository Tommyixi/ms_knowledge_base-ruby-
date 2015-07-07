class WordsController < ApplicationController

	def new
		@word = Word.new
	end

	def create
		@word = Word.create(word_params)
		@word.user_id = current_user.id

		if @word.save
			flash[:success] = "New word added"
			redirect_to root_url
		else
			flash[:error] = "Something went wrong, please try again."
			render 'new'
		end
	end

	def edit
		@word = Word.find(params[:id])
	end

	def update
		@word = Word.find(params[:id])
		if @word.update(word_params)
			flash[:success] = "Word has been updated"
			redirect_to root_url
		else
			flash[:error] = "Something went wrong, please try again. "
			render 'edit'
		end
	end

	private

	def word_params
		params.require(:word).permit(:title, :definition)
	end
end
