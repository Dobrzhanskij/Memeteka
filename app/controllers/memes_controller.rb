class MemesController < ApplicationController
  def index
    @meme = Meme.all
  end

  def new
    @meme = Meme.new
  end

  def show
    @meme = Meme.find(params[:id])
  end

  def create
    @meme = Meme.new(meme_params)

    if(@meme.save)
      redirect_to @meme

      else render 'new'
    end
  end

  private def meme_params
    params.require(:meme).permit(:title, :body, :image)
  end

end
