class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to @comment
      flash[:now] = 'Successfully Created Comment.'
    else
      render 'new'
      flash[:now] = 'oops, missed something.'
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end


  def comment_params
    params.require(:comment).permit(:title, :body, :post_id)
  end
end
