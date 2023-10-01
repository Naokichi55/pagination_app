class PostsController < ApplicationController
 
  def index
    @posts = Post.order(id: :asc).limit(10)
  end

  def create
    post = Post.create!(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
