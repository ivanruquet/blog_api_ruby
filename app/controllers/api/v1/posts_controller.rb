class Api::V1::PostsController < ApplicationController
  before_action :set_post, only: %i[show update destroy]

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    render json: @post
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      render json: @post, status: :created
      return
    end
    render json: @post.errors, status: :unprocessable_entity
  end

  def update
    if @post.update(post_params)
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    head :no_content
  end

  private
  def set_post
    @post = Post.find_by(id: params[:id])
  end

  def post_params
  params.require(:post).permit(:title, :description, :user_id)
  end
end
