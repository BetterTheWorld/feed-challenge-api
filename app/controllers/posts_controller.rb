class PostsController < ApplicationController
  before_action -> {
    sleep(0.5)
  }

  def index
    posts = Post.where(id: params[:ids].to_s.split(','))
    render json: posts
  end

  def show
    render json: Post.find_by(id: params[:id])
  end
end