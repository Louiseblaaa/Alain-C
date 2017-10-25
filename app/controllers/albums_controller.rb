class AlbumsController < ApplicationController
  before_action :set_theme
  before_action :set_album, only: [:edit, :update, :show, :destroy]

  def index
    @albums = Album.all
  end

  def show
    @album
  end

  def new
    @album = Album.new
  end

  def create
    @album = @theme.albums.new(album_params)
    if @album.save
      redirect_to @album
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @album.update(album_params)
      redirect_to theme_album_path
    else
      render :edit
    end
  end

  def destroy
    @album.destroy
    redirect_to theme_albums_path
  end

  private

  def set_album
    @theme = set_theme
    @album = @theme.albums.find(params[:id])
  end

  def set_theme
    @theme = Theme.find(params[:theme_id])
  end

  def album_params
    params.require(:album).permit(:title, :description, :photo)
  end

end
