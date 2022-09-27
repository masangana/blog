class LikesController < ApplicationController 
  def create
    @user_like = current_user
    @post_like = Post.find(params[:id])
    @like = Like.new(user: @user_like, post: @post_like)
    @like.update_likes_counter if @like.save
    redirect_back_or_to user_post_path(@post_like.user.id, @post_like.id)
  end
end
