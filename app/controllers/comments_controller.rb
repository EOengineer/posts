class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)

    if @comment.save
      redirect_to post_comment_path(@post)
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
