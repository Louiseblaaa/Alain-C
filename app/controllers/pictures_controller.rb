class PicturesController < ApplicationController
  before_action :set_album
  before_action :set_picture, only: [:edit, :update, :show, :destroy]

  def index
    @pictures = Picture.all
  end

  def show
    @picture
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = @album.pictures.new(picture_params)
    if @picture.save
      redirect_to @picture
    else
      render :new
    end
  end

  def edit
  end

   def update
    if @picture.update(picture_params)
      redirect_to theme_album_picture_path
    else
      render :edit
    end
  end

  def destroy
    @picture.destroy
    redirect_to theme_album_pictures_path
  end

  private

  def set_picture
    @album = set_album
    @picture = @theme.pictures.find(params[:id])
  end

  def set_album
    @album = Album.find(params[:theme_id])
  end

  def picture_params
    params.require(:picture).permit(:title, :description, :photo)
  end
end
