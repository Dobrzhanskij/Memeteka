class MemesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

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
      redirect_to @meme, success: 'Мем обновлен'
    else
      render 'edit'
    end
  end

  def destroy
    @meme = Meme.find(params[:id])
    @meme.destroy
    redirect_to memes_path, success: 'Мем удален'
  end

  def create
    @meme = Meme.new(meme_params)
    if(@meme.save)
      redirect_to memes_path, success: 'Мем создан'
    else
      render 'new'
    end
  end

  private def meme_params
    params.require(:meme).permit(:title, :body, :image)
  end

end
