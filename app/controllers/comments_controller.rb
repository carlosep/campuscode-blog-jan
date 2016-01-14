class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post.comments.create(comments_params)
    # comment = Comment.create(comments_params)
    # @post.comments << comment
    redirect_to @post
  end

  private

  def comments_params
    params.require(:comment).permit(:author)
  end
end
