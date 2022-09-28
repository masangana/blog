class PostsController < ApplicationController

  before_action :authenticate_user!
  
  def index
    @posts = Post.includes(:user).where(user: params[:user_id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.comments_counter = 0
    @post.likes_counter = 0

    respond_to do |format|
      if @post.save
        format.html do
          redirect_to user_post_path(@post.user, @post),
                      notice: 'Post was successfully created.'
        end
      else
        render :new
      end
    end
    @post.update_posts_counter
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
