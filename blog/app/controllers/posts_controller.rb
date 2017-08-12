class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def show
    @posts = Post.find(params[:id])
  end
  
  def edit
    @posts = Post.find(params[:id])
  end
  
  def update
    @posts = Post.find(params[:id])
    @posts.update(params.require(:post).permit(:name, :content))
    redirect_to posts_url ,notice: 'This article has been updated'
  end
  
  def new
    @posts=Post.new
  end
  
  def create
    @posts=Post.create(params.require(:post).permit(:name, :content))
    redirect_to posts_url ,notice: 'This article has been added'
  end
  
  def destroy
    @posts = Post.find(params[:id])
    @posts.destroy
    redirect_to posts_url ,notice: 'This article has been deleted'
  end
end
