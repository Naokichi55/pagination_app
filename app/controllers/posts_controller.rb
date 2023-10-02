class PostsController < ApplicationController
 
  PER_PAGE = 10

  def index
    @posts = Post.order(id: :desc).page(params[:page]).per(PER_PAGE)
  end

  def create
    post = Post.create!(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
