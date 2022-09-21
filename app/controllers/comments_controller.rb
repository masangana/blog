class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    render :new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.post = Post.find(params[:post_id])

    respond_to do |format|
      if @comment.save

        redirect_to user_post_path(@comment.post.user, @comment.post)
      else
        render :new
      end
    end
    @comment.update_comments_counter
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
