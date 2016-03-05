class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comments_params)
    @comment.user = current_user
    @comment.save
    redirect_to @post
  end

  private

  def comments_params
    params.require(:comment).permit(:text, :user_id, :post_id)
  end
end
