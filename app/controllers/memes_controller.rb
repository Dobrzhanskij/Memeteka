class MemesController < ApplicationController
  def index
    @meme = Meme.all
  end

  def new

  end

  def show
    @meme = Meme.find(params[:id])
  end

  def create
    @meme = Meme.new(meme_params)
    @meme.save

    redirect_to @meme
  end

  private def meme_params
    params.require(:meme).permit(:title, :body, :image)
  end

end
