class PostsController < ApplicationController
  def index
  	@post = Post.all
  end

  def create
  	@post = Post.new
  	@post.title = params[:title]
  	@post.content = params[:content]
  	@post.save
  	redirect_to "/posts/show/#{@post.id}"
  end

  def new
  end

  def edit
  end

  def show
  	@post = Post.find(params[:id])
  	@comment = Comment.all
  end

  def update
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy
  	redirect_to "/posts/index"
  end
end
