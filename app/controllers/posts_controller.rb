class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all.recent
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = current_user.posts.build
    if params[:path] == 'question' || 'memo'
      render "posts/new_#{params[:path]}"
    end
  end

  def create
    post = current_user.posts.build(post_params)
    if post.save
      redirect_to posts_path, flash: { success: '投稿しました' }
    else
      render "new_#{params[:content_type]}"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :tag, :content_type, :image)
  end
end
