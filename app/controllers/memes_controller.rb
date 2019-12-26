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

  def edit
    @meme = Meme.find(params[:id])
  end

  def update
    @meme = Meme.find(params[:id])
    if(@meme.update(meme_params))
      redirect_to @meme
    else
      render 'edit'
    end
  end

  def destroy
    @meme = Meme.find(params[:id])
    @meme.destroy
    redirect_to memes_path
  end

  def create
    @meme = Meme.new(meme_params)
    if(@meme.save)
      redirect_to @meme
    else
      render 'new'
    end
  end

  private def meme_params
    params.require(:meme).permit(:title, :body, :image)
  end

end
