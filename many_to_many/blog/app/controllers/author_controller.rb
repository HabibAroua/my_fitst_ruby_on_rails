class AuthorController < ApplicationController
	
	def new
		@a=Author.new
	end
	
	def show
		@a=new Author.all
	end
	
	def create
		Author.create(params.require(:author).permit(:name))
		#@b=Book.new
		#@b.title="Choufli hal"
		#@a=Author.find(1)
		#@a.books << @b
	end
	
end
