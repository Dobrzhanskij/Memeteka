class CommentsController < ApplicationController
  def create
    @meme = Meme.find(params[:meme_id])
    @comment = @meme.comments.create(comment_params)
    redirect_to meme_path(@meme)
  end

  def destroy
    @comment.destroy
  end

  private def comment_params
    params.require(:comment).permit(:username, :body)
  end
end
