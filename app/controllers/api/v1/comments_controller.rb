class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: %i[update destroy]

  def index
    @comment = Comment.all
    render json: @comments
  end

  def show
    render json: @comment
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      render json: @comment, status: :created
      return
    end
    render json: @comment.errors, status: :unprocessable_entity
  end

  def update
    if @comment.update(comment_params)
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy
    head :no_content
  end

  private
  def set_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
  params.require(:comment).permit(:body, :commentable_type, :commentable_id, :author_id)
  end
end
