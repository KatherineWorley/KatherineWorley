class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destory]
	
	def index
	end

	def show
	end

	def new 
		@post = Post.new
	end 

	def create 
		@post = Post.new(post_params)

		if @post.save
			redirect_to @post 
		else 
			render 'new'
		end
	end

	def update
	end 

	def edit
	end

	def destroy
	end

	private

	def find_post
			@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :description, :link)
	end
end
