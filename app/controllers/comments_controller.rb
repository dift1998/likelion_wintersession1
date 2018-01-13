class CommentsController < ApplicationController
	def create
		@comment = Comment.new
		@comment.content = params[:comment]
		@comment.id = params[:id]
		@comment.save
		redirect_to "/posts/show/#{params[:id]}"

		
	end

	def destroy
		# @comment = Comment.find(params[:id])
		# @comment.destroy
		# redirect_to "/posts/show/#{@post.id}"
	end
end
