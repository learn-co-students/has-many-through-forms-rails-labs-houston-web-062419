class CommentsController < ApplicationController

	def new
		@comment = Comment.new
		@users = User.all
	end

  def create
  	#byebug
    @comment = Comment.create(comment_params)
    redirect_to post_path(@comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, :user_name, user_attributes:[:username])
  end
end
