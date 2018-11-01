class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destory]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@posts = Post.all.order("created_at DESC")
	end

	def show
	end

	def new 
		@post = current_user.posts.build
	end 

	def create 
		@post = current_user.posts.build(post_params)
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
